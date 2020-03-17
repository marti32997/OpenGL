add_library(Index_Buffer
	Index_Buffer.cpp
)

add_library(Vertex_Buffer
	Vertex_Buffer.cpp
)

add_library(Renderer
	Renderer.cpp
)

add_library(Vertex_Array
	Vertex_Array.cpp
)

add_library(Vertex_Buffer_Layout
	Vertex_Buffer_Layout.cpp
)

add_library(Shader
	Shader.cpp
)

add_library(Texture
	Texture.cpp
)
target_link_libraries(Texture
	stb_image
)

set(GLEW_USE_STATIC_LIBS ON)

find_package(OpenGL REQUIRED)
find_package(glfw3 3.3 REQUIRED)
find_package(GLEW REQUIRED)

add_library(All_Libraries_Dependencies INTERFACE)

target_link_libraries(All_Libraries_Dependencies
	INTERFACE
	Renderer
	OpenGL::GL
	glfw
	GLEW::GLEW
	Index_Buffer
	Vertex_Buffer
	Vertex_Array
	Vertex_Buffer_Layout
	Shader
	Texture
)

add_executable(mainWindow
	application.cpp
)

target_link_libraries(mainWindow
	All_Libraries_Dependencies
)
