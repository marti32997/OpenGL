#pragma once

#include <string>
#include <tuple>
#include <unordered_map>

class Shader
{
private:
	std::string filepath_;
	unsigned int renderer_id_;
	std::unordered_map<std::string, int> uniform_location_cache_;

	std::tuple<std::string, std::string> parse_Shader(const std::string& file_path);
	unsigned int compile_Shader(unsigned int type, const std::string& source);
	unsigned int create_Shader(const std::string& vertexShader, const std::string& fragmentShader);
	int get_Uniform_Location(const std::string& name);

public:
	explicit Shader(const std::string& filepath);
	~Shader();

	void Bind() const;
	void Unbind() const;

	// Set Uniforms
	void set_Uniform_1i(const std::string& name, int value);
	void set_Uniform_1f(const std::string& name, float value);
	void set_Uniform_4f(const std::string& name, float v0, float v1, float v2, float v3);
};
