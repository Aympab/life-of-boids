#pragma once

#include <array>
#include <vector>

using vec2 = std::array<float, 2>;

class Bird {
private:
	vec2 position;
	vec2 velocity;
	vec2 nextVelocity; // A copier dans velocity
	double bodySize = 1;
	double viewAngle;
	double COHESION_RANGE;
	double NEIGHBOR_RANGE;
	double SEPARATION_RANGE;
	double ALIGNMENT_RELAXATION;
	double COHESION_RELAXATION;

	std::vector<Bird> neighbors;

public:
	Bird(); // Constructeur avec argument par d�faut
	Bird(vec2 position, vec2 velocity);
	~Bird(); // Destructeur

public:
	vec2 getPosition();
	vec2 getVelocity();

	void computeNeighbors();
	vec2 vec_cohesion = cohesion(std::vector<Bird> neighbors);
	vec2 vec_alignment = alignment(std::vector<Bird> neighbors);
	vec2 vec_separation = separation(std::vector<Bird> neighbors);
	void updateVelocity(vec2 vec_cohesion, vec2 vec_alignment, vec2 vec_separation);
	void updatePosition()
};

void Bird::updateVelocity(vec2 vec_cohesion, vec2 vec_alignment, vec2 vec_separation) {
	vec2 vec_displacement = vec_cohesion + vec_alignment + vec_separation;
	velocity += vec_displacement;
};

void Bird::updatePosition() {
	position += velocity;
};

class Flock {
public:
	int popsize;
	std::array<float, popsize> birds_vec;
	std::array<float, popsize> next_pos;

};