import SwiftUI

struct ContentView: View {

    
    var body: some View {
       
        TabView {
            News(textField: "")
                .tabItem {
                    Label("News", systemImage: "house")
                        
                }
            Favorite()
                .tabItem {
                    Label("Favorite", systemImage: "suit.heart")
                }
        }
    }
}

struct TabItem_Previews: PreviewProvider {
    static var previews: some View {
        Text("Content")
    }
}
