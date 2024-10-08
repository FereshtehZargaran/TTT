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
        .background(Color(red: 0.95, green: 0.87, blue: 0.72))
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
            .foregroundColor(tile.tileColor())
            .background(Color(red: 0.95, green: 0.87, blue: 0.72))
            .overlay(
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color(red: 0.7, green: 0.45, blue: 0.25), lineWidth: 4)
            )
    }
}

#Preview {
    TicTacToeView()
}

