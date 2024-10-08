import Foundation

final class TicTacToeViewModel: ObservableObject {
    
    @Published var turn = TileType.Cross
    @Published var board = [[Tile]]()
    
    init() {
        resetBoard()
    }
    
    func makeMove(_ row: Int,_ column: Int) {
        if(board[row][column].type != TileType.Empty) { return }
        
        board[row][column].type = turn == TileType.Cross ? TileType.Cross : TileType.Nought
        
        if checkForWinner() {
            let winner = turn == TileType.Cross ? "Crosses" : "Noughts"
        } else {
            turn = turn == TileType.Cross ? TileType.Nought : TileType.Cross
        }
    }
    
    func resetBoard() {
        board = Array(repeating: Array(repeating: Tile(type: .Empty), count: 3), count: 3)
    }
    
    func checkTurn(_ row: Int, _ column: Int) -> Bool {
        return board[row][column].type == turn
    }
    
    func checkForWinner() -> Bool {
        // Check rows and columns
        for i in 0..<3 {
            if checkTurn(i, 0) && checkTurn(i, 1) && checkTurn(i, 2) { // Check rows
                return true
            }
            if checkTurn(0, i) && checkTurn(1, i) && checkTurn(2, i) { // Check columns
                return true
            }
        }
        
        // Check diagonals
        if (checkTurn(0, 0) && checkTurn(1, 1) && checkTurn(2, 2)) ||  // Main diagonal
            (checkTurn(0, 2) && checkTurn(1, 1) && checkTurn(2, 0)) {   // Anti-diagonal
            return true
        }
        
        return false
    }

    func checkForDraw() -> Bool {
        return board.flatMap { $0 }.allSatisfy { $0.type != TileType.Empty }
    }

}
