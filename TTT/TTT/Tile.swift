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
    
    var color: Color {
        switch type {
        case .Cross:
                .black
        case .Empty:
                .red
        default:
                .black
        }
    }
    
}
