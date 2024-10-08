import SwiftUI

struct TicTacToeView: View {
    @StateObject var viewModel = TicTacToeViewModel()
    
    var body: some View {
        VStack(spacing: 8) {
            ForEach(0...2, id: \.self) { row in
                HStack(spacing: 8) {
                    ForEach(0...2, id: \.self) { column in
                        TileView(tile: $viewModel.board[row][column])
                            .onTapGesture {
                                viewModel.makeMove(row, column)
                            }
                    }
                }
            }
        }
        .background(Color.black)
        .padding()
        .alert(isPresented: $viewModel.showAlert) {
            Alert(
                title: Text(viewModel.alertMessage),
                dismissButton: .default(Text("Okay")) {
                    viewModel.resetBoard()
                }
            )
        }
    }
}

struct TileView: View {
    @Binding var tile: Tile
    
    var body: some View {
        Text(tile.title)
            .font(.system(size: 60))
            .bold()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .aspectRatio(1, contentMode: .fit)
            .foregroundColor(tile.color)
            .background(Color.white)
    }
}

#Preview {
    TicTacToeView()
}

