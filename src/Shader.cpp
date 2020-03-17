#include "Shader.h"

#include "Renderer.h"

#include <fstream>
#include <iostream>
#include <sstream>
#include <string>

Shader::Shader(const std::string& filepath)
	: filepath_(filepath), renderer_id_(0)
{
	auto [vertex_source, fragment_source] = parse_Shader(filepath);
	renderer_id_ = create_Shader(vertex_source, fragment_source);
}

Shader::~Shader()
{
	GL_CALL(glDeleteProgram(renderer_id_));
}

std::tuple<std::string, std::string> Shader::parse_Shader(const std::string& file_path)
{
	std::ifstream stream(file_path);
	enum class Shader_Type
	{
		NONE = -1,
		VERTEX = 0,
		FRAGMENT = 1
	};

	std::string line;
	std::stringstream ss[2];
	Shader_Type type = Shader_Type::NONE;
	while (getline(stream, line))
	{
		if (line.find("#shader") != std::string::npos)
		{
			if (line.find("vertex") != std::string::npos)
			{
				type = Shader_Type::VERTEX;
			}
			else if (line.find("fragment") != std::string::npos)
			{
				type = Shader_Type::FRAGMENT;
			}
		}
		else
		{
			ss[(int)type] << line << '\n';
		}
	}

	return {ss[0].str(), ss[1].str()};
}

unsigned int Shader::compile_Shader(unsigned int type, const std::string& source)
{
	unsigned int id = glCreateShader(type);
	const char* src = source.c_str();
	GL_CALL(glShaderSource(id, 1, &src, nullptr));
	GL_CALL(glCompileShader(id));

	int result;
	GL_CALL(glGetShaderiv(id, GL_COMPILE_STATUS, &result));
	if (result == GL_FALSE)
	{
		int length;
		GL_CALL(glGetShaderiv(id, GL_INFO_LOG_LENGTH, &length));
		std::string message(length, ' ');
		GL_CALL(glGetShaderInfoLog(id, length, &length, &message[0]));
		std::cout << "Failed to compile "
				  << (type == GL_VERTEX_SHADER ? "vertex" : "fragment")
				  << " shader" << std::endl;
		std::cout << message << std::endl;
		GL_CALL(glDeleteShader(id));
		return 0;
	}
	return id;
}

unsigned int Shader::create_Shader(const std::string& vertexShader, const std::string& fragmentShader)
{
	unsigned int program = glCreateProgram();
	unsigned int vs = compile_Shader(GL_VERTEX_SHADER, vertexShader);
	unsigned int fs = compile_Shader(GL_FRAGMENT_SHADER, fragmentShader);

	GL_CALL(glAttachShader(program, vs));
	GL_CALL(glAttachShader(program, fs));
	GL_CALL(glLinkProgram(program));
	GL_CALL(glValidateProgram(program));

	GL_CALL(glDeleteShader(vs));
	GL_CALL(glDeleteShader(fs));

	return program;
}

void Shader::Bind() const
{
	GL_CALL(glUseProgram(renderer_id_));
}

void Shader::Unbind() const
{
	GL_CALL(glUseProgram(0));
}

void Shader::set_Uniform_1i(const std::string& name, int value)
{
	GL_CALL(glUniform1i(get_Uniform_Location(name), value));
}

void Shader::set_Uniform_1f(const std::string& name, float value)
{
	GL_CALL(glUniform1f(get_Uniform_Location(name), value));
}

void Shader::set_Uniform_4f(const std::string& name, float v0, float v1, float v2, float v3)
{
	GL_CALL(glUniform4f(get_Uniform_Location(name), v0, v1, v2, v3));
}

int Shader::get_Uniform_Location(const std::string& name)
{
	if (uniform_location_cache_.find(name) != uniform_location_cache_.end())
		return uniform_location_cache_[name];
	GL_CALL(int location = glGetUniformLocation(renderer_id_, name.c_str()));

	if (location == -1)
		std::cout << "Warning: Uniform " << name << " doesn't exist" << std::endl;
	else
		uniform_location_cache_[name] = location;
	return location;
}
