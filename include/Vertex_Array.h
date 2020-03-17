#pragma once

#include "Vertex_Buffer.h"

class Vertex_Buffer_Layout;

class Vertex_Array
{
private:
	unsigned int renderer_id_;

public:
	Vertex_Array();
	~Vertex_Array();
	void add_Buffer(const Vertex_Buffer& vb, const Vertex_Buffer_Layout& vbl);

	void Bind() const;
	void Unbind() const;
};