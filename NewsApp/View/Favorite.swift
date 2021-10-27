import SwiftUI

struct Favorite: View {
    var body: some View {
        
        NavigationView {
            VStack {
                Text("Favorites")
                    .font(.title)
                
                ListView()
                
            }
        }
        
        
        
    }
}

struct Favorite_Previews: PreviewProvider {
    static var previews: some View {
        Favorite()
    }
}
