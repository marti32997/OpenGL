#pragma once

#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include <signal.h>

#include "Index_Buffer.h"
#include "Shader.h"
#include "Vertex_Array.h"

#define ASSERT(x) \
	if (!(x))     \
		raise(SIGTRAP);

#define GL_CALL(x)    \
	GL_Clear_Error(); \
	x;                \
	ASSERT(GL_Log_Call(#x, __FILE__, __LINE__))

void GL_Clear_Error();
bool GL_Log_Call(const char* function, const char* file, int line);

class Renderer
{
public:
	void Clear() const;
	void Draw(const Vertex_Array& va, const Index_Buffer& ib, const Shader& shader) const;
};