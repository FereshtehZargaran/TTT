import Testing
@testable import TTT

struct TTTTests {

    @Test
    func testBoardInitialization() {
        let viewModel = TicTacToeViewModel()

        // Assert that the board has 3 rows and 3 columns, and all are Empty tiles.
        assert(viewModel.board.count == 3)
        for row in viewModel.board {
            assert(row.count == 3)
            assert(row.allSatisfy { $0.type == .Empty })
        }
    }

}
