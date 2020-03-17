#include "Index_Buffer.h"

#include "Renderer.h"

Index_Buffer::Index_Buffer(const unsigned int* data, unsigned int count)
	: count_(count)
{
	GL_CALL(glGenBuffers(1, &renderer_id_));
	GL_CALL(glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, renderer_id_));
	GL_CALL(glBufferData(GL_ELEMENT_ARRAY_BUFFER, count * sizeof(unsigned int), data, GL_STATIC_DRAW));
}

Index_Buffer::~Index_Buffer()
{
	GL_CALL(glDeleteBuffers(1, &renderer_id_));
}

void Index_Buffer::Bind() const
{
	GL_CALL(glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, renderer_id_));
}

void Index_Buffer::Unbind() const
{
	GL_CALL(glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0));
}