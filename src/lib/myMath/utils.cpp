#define _USE_MATH_DEFINES
#include "Vec2.hpp"
#include <vector>
#include <cmath>

float distance(const Vec2 &a,const Vec2 &b) {
    return (a - b).norm();
}

Vec2 barycenter(const std::vector<Vec2> vecs) {
    int size = vecs.size();
    float xg = 0;
    float yg = 0;
    for (Vec2 v : vecs) {
        xg += v.x;
        yg += v.y;
    }
    return Vec2(xg / size, yg / size);
}

float radians(float angle) {
    return angle * M_PI / 180;
}

float degrees(float angle) {
    return angle * 180/ M_PI;
}

bool isAntiClockwise(Vec2 a, Vec2 b){
  return (a.x * b.y - a.y * b.x >=0);
}