#pragma once

#include <vector>
#include <array>

#include "glx.hpp"
#include "shaders/lines.hpp"
#include "shaders/points.hpp"
#include "shaders/triangle.hpp"

#include "../model/Flock.hpp"
#include "../controller/AgentDisplayer.hpp"
#include "../controller/flock_generator.hpp"

extern Flock* MAIN_pFLOCK;
static bool prettyAgents;

class GraphicalManager {
private:
	GLFWwindow* m_window;
	//AgentDisplayer<> m_displayer;
	int m_height;
	int m_width;
	Color m_background_color;
	Color m_agent_color;
	vec3 m_agent_GLcolor;

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
	~GraphicalManager();
	GraphicalManager(Color myBackgroundColor, Color myAgentColor);
	bool mainLoop();
};


static void error_callback(int error, const char* description);

static void key_callback(GLFWwindow* window, int key, int /*scancode*/, int action, int /*mods*/);

static void mouse_button_callback(GLFWwindow* window, int button, int action, int mods);
