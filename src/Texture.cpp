#include "Texture.h"

#include <stb_image/stb_image.h>

Texture::Texture(const std::string& filepath)
	: renderer_id_(0), filepath_(filepath), local_buffer_(nullptr), width_(0),
	  height_(0), bits_per_pixel_(0)
{
	stbi_set_flip_vertically_on_load(1);
	local_buffer_ = stbi_load(filepath.c_str(), &width_, &height_, &bits_per_pixel_, 4);

	GL_CALL(glGenTextures(1, &renderer_id_));
	GL_CALL(glBindTexture(GL_TEXTURE_2D, renderer_id_));

	GL_CALL(glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR));
	GL_CALL(glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR));
	GL_CALL(glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE));
	GL_CALL(glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE));

	GL_CALL(glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA8, width_, height_, 0, GL_RGBA, GL_UNSIGNED_BYTE, local_buffer_));
	GL_CALL(glBindTexture(GL_TEXTURE_2D, 0));

	if (local_buffer_)
	{
		stbi_image_free(local_buffer_);
	}
}

Texture::~Texture()
{
	GL_CALL(glDeleteTextures(1, &renderer_id_));
}

void Texture::Bind(unsigned int slot) const
{
	GL_CALL(glActiveTexture(GL_TEXTURE0 + slot))
	GL_CALL(glBindTexture(GL_TEXTURE_2D, renderer_id_));
}

void Texture::Unbind() const
{
	GL_CALL(glBindTexture(GL_TEXTURE_2D, 0));
}