# Traffic Dodge — x86-64 Assembly

A real-time three-lane endless driving game written in x86-64 assembly, with a custom game loop, collision detection, scoring, high scores, and dynamic difficulty scaling.

## Gameplay Video

<p align="center">
  <a href="https://youtube.com/shorts/n1PC6fxFoC0?feature=share">
    <img src="https://img.youtube.com/vi/n1PC6fxFoC0/hqdefault.jpg" alt="Watch Traffic Dodge gameplay on YouTube" width="420">
  </a>
</p>

<p align="center"><strong>▶ Click the preview to watch the gameplay</strong></p>

## Overview

Traffic Dodge is an arcade-style game where the player switches between three lanes to avoid incoming cars for as long as possible. The gameplay logic, state management, collision detection, scoring, difficulty progression, and rendering calls are implemented in x86-64 assembly.

The checked-in desktop build uses Raylib for the window, keyboard input, timing, and drawing primitives.

## Highlights

- x86-64 assembly source split into focused modules
- Three-lane player movement and incoming traffic
- Real-time collision detection
- Increasing speed and spawn rate as levels progress
- Score tracking and an in-memory top-five high-score table
- Restart flow after game over
- Raylib-backed desktop rendering and input

## Controls

- **Left / Right arrow keys** — switch lanes
- **Enter** — restart after game over
- Close the window to quit

## Project Structure

```text
main.s        Entry point
init.s        Window and game initialization
game_loop.s   Main game loop and state flow
input.s       Keyboard input
update.s      Player, cars, score, and level updates
collision.s   Collision detection
render.s      Frame rendering
highscore.s   High-score logic
data.s        Game state and constants
Makefile      Build and run targets
```

## Build and Run

### Requirements

- Linux or another environment with GNU `as` / GCC
- Raylib development library
- `make`

### Run

```bash
git clone https://github.com/rmuthukumar23/x86-bare-metal-2d-game.git
cd x86-bare-metal-2d-game
make
./traffic_dodge
```

Or:

```bash
make run
```

## Technical Notes

The program is assembled with GNU `as` and linked with GCC against Raylib and `libm`. The game keeps up to 10 traffic cars active, updates score and level state continuously, and stores the five best scores in memory for the current run.
