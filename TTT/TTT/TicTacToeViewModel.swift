import Foundation

final class TicTacToeViewModel: ObservableObject {

    @Published var board = [[Tile]]()

    init() {
        resetBoard()
    }

    func resetBoard() {
        board = Array(repeating: Array(repeating: Tile(type: .Empty), count: 3), count: 3)
    }

}
