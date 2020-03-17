#shader vertex
#version 410 core

layout(location=0)in vec4 position;
layout(location=1)in vec2 texture_coordinate;

out vec2 v_Texture_Coordinate;

void main()
{
	gl_Position=position;
	v_Texture_Coordinate=texture_coordinate;
}

#shader fragment
#version 410 core

layout(location=0)out vec4 colour;
in vec2 v_Texture_Coordinate;

// uniform vec4 u_Colour;
uniform sampler2D u_Texture;

void main()
{
	vec4 texture_color=texture(u_Texture,v_Texture_Coordinate);
	colour=texture_color;
}