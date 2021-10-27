import SwiftUI

struct SearchTextField: View {
    @Binding var search : String
    
    var body: some View {
        
            TextField("Search", text: $search)
                
          
    }
}

struct SearchTextField_Previews: PreviewProvider {
    static var previews: some View {
        Text("textField")
    }
}
