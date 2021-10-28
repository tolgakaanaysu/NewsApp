import SwiftUI

struct Favorite: View {
    
    
    var body: some View {
        
        NavigationView {
            VStack {
                
                ListView(isFavoriteTab: true)
                
            }
            
            .navigationTitle("Favorite")
            .navigationBarTitleDisplayMode(.inline)
            
        }
        
        
        
    }
}

struct Favorite_Previews: PreviewProvider {
    static var previews: some View {
        Favorite()
    }
}
