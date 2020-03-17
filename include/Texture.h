#pragma once

#include <string>

#include "Renderer.h"

class Texture
{
private:
	unsigned int renderer_id_;
	std::string filepath_;
	unsigned char* local_buffer_;
	int width_, height_, bits_per_pixel_;

public:
	Texture(const std::string& filepath);
	~Texture();

	void Bind(unsigned int slot = 0) const;
	void Unbind() const;

	inline int get_Width() const { return width_; }
	inline int get_Height() const { return height_; }
};