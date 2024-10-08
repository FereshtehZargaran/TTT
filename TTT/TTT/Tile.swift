import SwiftUICore

enum TileType {

    case Nought
    case Cross
    case Empty

}

struct Tile {

    var type: TileType

    var title: String {
        switch type {
        case .Cross:
            "X"
        case .Nought:
            "O"
        default:
            ""
        }
    }

    func tileColor() -> Color {
        switch type {
        case .Nought:
            return Color(red: 1.0, green: 0.6, blue: 0.1)
        case .Cross:
            return Color(red: 0.9, green: 0.3, blue: 0.2)
        default:
            return Color.black
        }
    }

}
