import SwiftUI

struct CancelButton: View {
    @Binding var cancel: String
    
    var body: some View {
        
        Button(action: {
            cancel = ""
        }){
            Image(systemName: "x.circle")
        }
    }
}

struct CancelButton_Previews: PreviewProvider {
    static var previews: some View {
       Text("Button")
    }
}
