#pragma once

#include <vector>
#include <array>

#include "glx.hpp"
#include "shaders/lines.hpp"
#include "shaders/points.hpp"
#include "shaders/triangle.hpp"

#include "../model/Flock.hpp"

extern Flock* flockPtr;

class GraphicalManager {
private:
	GLFWwindow* m_window;

	float m_height;
	float m_width;

	GLint m_mvp_location;
	GLint m_vpos_location;
	GLint m_vcol_location;

	GLint m_transform_location;
	GLint m_pointSize_location;
	GLint m_maxSpeedSquared_location;
	GLint m_position_location;
	GLint m_velocity_location;

	GLint m_transform_location2;
	GLint m_vpos_location2;
	GLint m_vcol_location2;

public:
	ShaderProgram triangle_shaderProgram;
	VertexArray triangle_vertexArray;
	Buffer triangle_buffer;

	ShaderProgram points_shaderProgram;
	VertexArray points_vertexArray;
	Buffer points_buffer;

	ShaderProgram lines_shaderProgram;
	VertexArray lines_vertexArray;
	Buffer lines_buffer;

public:
	GraphicalManager();
	~GraphicalManager();
	
	std::vector<points::Point> createPoints(unsigned int number);
	bool mainLoop(float t);
};


static void error_callback(int error, const char* description);

static void key_callback(GLFWwindow* window, int key, int /*scancode*/, int action, int /*mods*/);

static void mouse_button_callback(GLFWwindow* window, int button, int action, int mods);
