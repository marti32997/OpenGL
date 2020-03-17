#include "Vertex_Buffer.h"

#include "Renderer.h"

Vertex_Buffer::Vertex_Buffer(const void* data, unsigned int size)
{
	GL_CALL(glGenBuffers(1, &renderer_id_));
	GL_CALL(glBindBuffer(GL_ARRAY_BUFFER, renderer_id_));
	GL_CALL(glBufferData(GL_ARRAY_BUFFER, size, data, GL_STATIC_DRAW));
}

Vertex_Buffer::~Vertex_Buffer()
{
	GL_CALL(glDeleteBuffers(1, &renderer_id_));
}

void Vertex_Buffer::Bind() const
{
	GL_CALL(glBindBuffer(GL_ARRAY_BUFFER, renderer_id_));
}

void Vertex_Buffer::Unbind() const
{
	GL_CALL(glBindBuffer(GL_ARRAY_BUFFER, 0));
}