#include "raylib.h"
#include <iostream>

static constexpr const int WIDTH = 1280;
static constexpr const int HEIGHT = 960;

int main() {
  InitWindow(WIDTH, HEIGHT, "demo");
  float rootBeer = 1.99;
  double cheeseBurger = 5.99;
  bool shouldHaveLunch = true;

  std::cout << shouldHaveLunch << '\n';
  return 0;
}
