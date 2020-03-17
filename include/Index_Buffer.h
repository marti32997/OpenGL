#pragma once

class Index_Buffer
{
private:
	unsigned int renderer_id_;
	unsigned int count_;

public:
	Index_Buffer(const unsigned int* data, unsigned int count);
	~Index_Buffer();

	void Bind() const;
	void Unbind() const;

	inline unsigned int get_Count() const { return count_; }
};