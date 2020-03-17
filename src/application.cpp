#include <GL/glew.h>
#include <GLFW/glfw3.h>

#include <fstream>
#include <iostream>
#include <signal.h>
#include <sstream>
#include <string>
#include <tuple>

#include "Index_Buffer.h"
#include "Renderer.h"
#include "Shader.h"
#include "Vertex_Array.h"
#include "Vertex_Buffer.h"
#include "Vertex_Buffer_Layout.h"
#include "Texture.h"

int main(void)
{
	GLFWwindow* window;
	// Initialize the library
	if (!glfwInit())
		return EXIT_FAILURE;

	glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
	glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
	glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

	// Create a windowed mode window and it's OpenGL Context
	window = glfwCreateWindow(500, 500, "Hello World", NULL, NULL);
	if (!window)
	{
		glfwTerminate();
		return EXIT_FAILURE;
	}

	// Make the window's context current
	glfwMakeContextCurrent(window);

	glfwSwapInterval(1);

	if (glewInit() != GLEW_OK)
	{
		std::cout << "Error!" << std::endl;
	}

	float positions[] = {
		-0.5f, -0.5f, 0.0f, 0.0f, // 0
		0.5f, -0.5f, 1.0f, 0.0f,  // 1
		0.5f, 0.5f, 1.0f, 1.0f,   // 2
		-0.5f, 0.5f, 0.0f, 1.0f   // 3
	};

	unsigned int indices[] = {
		0, 1, 2,
		2, 3, 0};

	GL_CALL(glEnable(GL_BLEND));
	GL_CALL(glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA));

	Vertex_Array va;
	Vertex_Buffer vb(positions, 4 * 4 * sizeof(float));
	Vertex_Buffer_Layout vbl;
	vbl.push<float>(2);
	vbl.push<float>(2);
	va.add_Buffer(vb, vbl);

	Index_Buffer ib(indices, 6);

	Shader shader("res/Shaders/Basic.glsl");
	shader.Bind();
	// shader.set_Uniform_4f("u_Colour", 0.8f, 0.3f, 0.8f, 1.0f);

	Texture texture("res/Textures/Amazon.png");
	texture.Bind();
	shader.set_Uniform_1i("u_Texture", 0);

	va.Unbind();
	vb.Unbind();
	ib.Unbind();
	shader.Unbind();

	Renderer renderer;

	float r = 0.0f;
	float increment = 0.05f;
	// Loop until the user closes the window
	while (!glfwWindowShouldClose(window))
	{
		// Render here
		renderer.Clear();

		shader.Bind();
		// shader.set_Uniform_4f("u_Colour", r, 0.3f, 0.8f, 1.0f);

		renderer.Draw(va, ib, shader);

		if (r > 1.0f)
			increment = -0.05f;
		else if (r < 0.0f)
			increment = 0.05f;

		r += increment;
		// Swap front and back buffers
		GL_CALL(glfwSwapBuffers(window));

		// Poll for and process events
		GL_CALL(glfwPollEvents());
	}
	glfwTerminate();
	return EXIT_SUCCESS;
}