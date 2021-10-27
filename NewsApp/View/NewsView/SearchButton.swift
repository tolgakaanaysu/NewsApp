import SwiftUI

struct SearchButton: View {
    @State var search: String
    
    var body: some View {
      
        Button(action: {
            
        }){
            Image(systemName: "magnifyingglass")
        }
    }
}

struct SearchButton_Previews: PreviewProvider {
    static var previews: some View {
        Text("Search")
    }
}
