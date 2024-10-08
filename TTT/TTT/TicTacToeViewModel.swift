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
    }

    func resetBoard() {
        board = Array(repeating: Array(repeating: Tile(type: .Empty), count: 3), count: 3)
    }

}
