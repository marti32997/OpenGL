#include "Renderer.h"

#include <iostream>

void GL_Clear_Error()
{
	while (glGetError() != GL_NO_ERROR)
		;
}

bool GL_Log_Call(const char* function, const char* file, int line)
{
	while (GLenum error = glGetError())
	{
		std::cout << "[OpenGL Error] (" << error << "): " << function << " " << file << ": " << line << std::endl;
		return false;
	}
	return true;
}

void Renderer::Clear() const
{
	GL_CALL(glClear(GL_COLOR_BUFFER_BIT));
	GL_CALL(glClearColor(1.0f, 1.0f, 1.0f, 1.0f));
}

void Renderer::Draw(const Vertex_Array& va, const Index_Buffer& ib, const Shader& shader) const
{
	shader.Bind();
	va.Bind();
	ib.Bind();
	GL_CALL(glDrawElements(GL_TRIANGLES, ib.get_Count(), GL_UNSIGNED_INT, nullptr));
}