# Tic-Tac-Toe Game in SwiftUI

A simple Tic-Tac-Toe game built using SwiftUI, following the MVVM (Model-View-ViewModel) design pattern. The game allows two players to take turns placing Xs and Os on a 3x3 grid until one player wins, or the game ends in a draw.

## Features

- Play Tic-Tac-Toe with two players (Cross and Nought).
- Detects win conditions (row, column, and diagonal).
- Detects draw conditions when no more valid moves can be made.
- Alerts for winning and drawing states.
- Resets the game after each round.
- TDD-based development with test coverage using Swift's `@Test` syntax.

## Demo

A video of the app.

## Requirements

- **iOS 16.0+**
- **Xcode 15.0+**
- **Swift 5.9+**

## Project Structure

- **Model**: Defines the game's basic data structure, including `Tile` and `TileType` (Cross, Nought, and Empty).
- **ViewModel**: Manages the game state and handles game logic, such as detecting win conditions and switching between players.
- **View**: Displays the UI for the Tic-Tac-Toe game board, handling user input and updating the game state reactively using SwiftUI.
