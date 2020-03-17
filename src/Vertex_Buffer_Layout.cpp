#include "Vertex_Buffer_Layout.h"

Vertex_Buffer_Layout::Vertex_Buffer_Layout()
	: stride_(0)
{
}
Vertex_Buffer_Layout::~Vertex_Buffer_Layout() {}

template <typename T>
void Vertex_Buffer_Layout::push(unsigned int count)
{
	//static_assert(false);
}

template <>
void Vertex_Buffer_Layout::push<float>(unsigned int count)
{
	elements_.push_back({GL_FLOAT, count, GL_FALSE});
	stride_ += count * Vertex_Buffer_Layout_Element::get_Size_Of_Type(GL_FLOAT);
}

template <>
void Vertex_Buffer_Layout::push<unsigned int>(unsigned int count)
{
	elements_.push_back({GL_UNSIGNED_INT, count, GL_FALSE});
	stride_ += count * Vertex_Buffer_Layout_Element::get_Size_Of_Type(GL_UNSIGNED_INT);
}

template <>
void Vertex_Buffer_Layout::push<unsigned char>(unsigned int count)
{
	elements_.push_back({GL_UNSIGNED_BYTE, count, GL_TRUE});
	stride_ += count * Vertex_Buffer_Layout_Element::get_Size_Of_Type(GL_UNSIGNED_BYTE);
}

const std::vector<Vertex_Buffer_Layout_Element>& Vertex_Buffer_Layout::get_Elements() const { return elements_; }
unsigned int Vertex_Buffer_Layout::get_Stride() const { return stride_; }