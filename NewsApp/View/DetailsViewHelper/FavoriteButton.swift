import SwiftUI

struct FavoriteButton: View {
    @State private var favori = false
    
    var body: some View {
        Button(action: {
            favori.toggle()
        }, label: {
            Label(
                title: { Text("Label") },
                icon: { Image(systemName: "star.fill")
                    .foregroundColor( favori ? Color.yellow: Color.gray)
                }
        
            )
        })
        
    
    }
}
