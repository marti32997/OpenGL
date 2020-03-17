#include "Vertex_Array.h"
#include "Renderer.h"
#include "Vertex_Buffer_Layout.h"

Vertex_Array::Vertex_Array()
{
	GL_CALL(glGenVertexArrays(1, &renderer_id_));
}
Vertex_Array::~Vertex_Array()
{
	GL_CALL(glDeleteVertexArrays(1, &renderer_id_));
}
void Vertex_Array::add_Buffer(const Vertex_Buffer& vb, const Vertex_Buffer_Layout& vbl)
{
	Bind();
	vb.Bind();
	const auto& elements = vbl.get_Elements();
	unsigned int offset = 0;
	for (unsigned int i = 0; i < elements.size(); i++)
	{
		const auto& element = elements[i];
		GL_CALL(glEnableVertexAttribArray(i));
		GL_CALL(glVertexAttribPointer(i, element.count, element.type,
									  element.normalized, vbl.get_Stride(), reinterpret_cast<const void*>(offset)));
		offset += element.count * Vertex_Buffer_Layout_Element::get_Size_Of_Type(element.type);
	}
}

void Vertex_Array::Bind() const
{
	GL_CALL(glBindVertexArray(renderer_id_));
}
void Vertex_Array::Unbind() const
{
	GL_CALL(glBindVertexArray(0));
}