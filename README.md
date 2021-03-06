# Mars Rover Python
[![GitHub license](https://img.shields.io/github/license/meandor/mars-rover-python)](https://github.com/meandor/mars-rover-python/blob/main/LICENSE)
![CircleCI](https://img.shields.io/circleci/build/github/meandor/mars-rover-python)

## Prerequisites
Have installed:
* Python version >= 3.6, you could use for example [pyenv](https://github.com/pyenv/pyenv) to manage multiple Python versions
* [Poetry](https://python-poetry.org/docs/#installation)
* [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) to clone this repo
* An IDE of your choice, for example [PyCharm](https://www.jetbrains.com/pycharm/)

## The Problem
A squad of robotic rovers are to be landed by NASA on a plateau on Mars.

This plateau, which is curiously rectangular, must be navigated by the rovers so that their on board cameras can get a complete view of the surrounding terrain to send back to Earth.
A rover's position is represented by a combination of an x and y co-ordinates and a letter representing one of the four cardinal compass points. The plateau is divided up into a grid to simplify navigation. An example position might be 0, 0, N, which means the rover is in the bottom left corner and facing North.

In order to control a rover, NASA sends a simple string of letters. The possible letters are 'L', 'R' and 'M'. 'L' and 'R' makes the rover spin 90 degrees left or right respectively, without moving from its current spot.
'M' means move forward one grid point, and maintain the same heading.
Assume that the square directly North from (x, y) is (x, y+1).

Input (whether hard coded or input from keyboard):
The first line of input is the upper-right coordinates of the plateau, the lower-left coordinates are assumed to be 0,0.
The rest of the input is information pertaining to the rovers that have been deployed. Each rover has two lines of input. The first line gives the rover's position, and the second line is a series of instructions telling the rover how to explore the plateau.

The position is made up of two integers and a letter separated by spaces, corresponding to the x and y co-ordinates and the rover's orientation.
Each rover will be finished sequentially, which means that the second rover won't start to move until the first one has finished moving.
Output:
The output for each rover should be its final co-ordinates and heading.

Plateau max X and Y, Starting coordinates, direction and path for two rovers:
```
5 5
1 2 N
LMLMLMLMM
3 3 E
MMRMMRMRRM
```

Output and new coordinates:
```
1 3 N
5 1 E
```

## Usage
### Install all dependencies
```bash
poetry install
```

### Tests
To run all tests
```bash
make test
```

#### Run unit tests
```bash
make unit-test
```

#### Run integration tests
```bash
make integration-test
```

#### Run linter
```bash
make lint
```

#### Run Type Checker
```bash
make check-types
```
