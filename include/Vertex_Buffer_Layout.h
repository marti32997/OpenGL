#pragma once

#include <GL/glew.h>
#include <vector>

#include "Renderer.h"

struct Vertex_Buffer_Layout_Element
{
	unsigned int type;
	unsigned int count;
	unsigned char normalized;

	static unsigned int get_Size_Of_Type(unsigned int type)
	{
		switch (type)
		{
			case GL_FLOAT:
				return 4;
			case GL_UNSIGNED_INT:
				return 4;
			case GL_UNSIGNED_BYTE:
				return 1;
		}
		ASSERT(false);
		return 0;
	}
};

class Vertex_Buffer_Layout
{
private:
	std::vector<Vertex_Buffer_Layout_Element> elements_;
	unsigned int stride_;

public:
	Vertex_Buffer_Layout();
	~Vertex_Buffer_Layout();

	template <typename T>
	void push(unsigned int count);

	const std::vector<Vertex_Buffer_Layout_Element>& get_Elements() const;
	unsigned int get_Stride() const;
};