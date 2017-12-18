# Tic Tac Toe

```sh
Tic Tac Toe (or Naughts and Crosses) is a game where each player takes a turn on a 3X3 grid. The winner is the first person to fill a row, column or diagonal with their O or X marker.
```
The Aim:

- Write an application where you can play the famous 'tic-tac-toe'
- There should be two players
- They can place their 'marker' in a 3X3 grid
- A player can win

## Installation

* Make sure you have Ruby installed.
* Clone the repository below to your local computer

```sh
git clone https://github.com/benjaminsunderland/TicTacToe.git
```

## Tests

This application has been written using Test Driven Development with RSpec.

To Test - in the project directory type:

```sh
rspec
```

To Run - In the project directory type these commands:

```sh
- irb to launch the interactive ruby shell
- require the file called 'game' by typing 'require (the directory)'
```

To Play - Run these commands:

- Placing Marker:
  ```sh
  game.place_maker(row, column) I.E. game.place_maker(0, 0)
  ```

- See state of game:
  ```sh
  game.board.grid
  ```

## Technologies

  * Ruby
  * TDD with RSpec

## My Approach

- What relevant classes would I need
- There needed to be a controller, board and a player
- Get it to work first, refactor later.

I was excited for this challenge. This was my first attempt of building a game in the terminal. This project needed effective planning in order to make my code as readable and neat as possible as there would be multiple classes.

My first step was to create a board class in order for the user to play the game. Firstly, I needed to create a board. This would be a multidimensional array to hold a grid of 3X3. This was achieved by ```sh Array.new(3) { Array.new(3) { nil } }```. The default values of this grid would be 'nil' until a player placed a mark.

My second step was to create a player class. This class simply would have an initialize method. This would hold the player's marker and name in two instance variables. These could be accessed through the relevant 'setter' and 'getter' methods.

My third step was to create a Game class. This would act as the 'controller' and 'interface'. The Game class had to hold the 'dependency injections'. This would contain functions that would delegate control to separate classes. I had multiple methods in this controller such as 'place marker', 'taken?' and 'out of bounds'. One could play by placing a marker ```sh place_marker(0,0)```. This would add the player's 'marker' to the grid given the arguments. The winner is the first person to fill a row, column or diagonal with their O or X marker.

## What am I pleased with

- I am pleased I have my first working game!
- I kept the principle of 'separation of concerns'
- I correctly used 'dependency injections'
- I am very pleased because I think the code is very readable.

## What would I like to include in the future or change

- I would love to make this game more interactive for the user
