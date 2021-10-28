import SwiftUI

struct ShareButton: View {
    
    @State var isShare = false
   
    let selecetedUrl: String
    
    var body: some View {
            Button(action: {
                isShare.toggle()
                
                let url = URL(string: selecetedUrl)!
                let av = UIActivityViewController(activityItems: [url], applicationActivities: nil)
                
                UIApplication.shared.windows.first?.rootViewController?.present(av, animated: true, completion: nil)
                
                
                
                
        }, label: {
            Label(
                title: { Text("Share") },
                icon: { Image(systemName: "square.and.arrow.up")
                    .foregroundColor( Color.gray)
                }
        
            )
        })
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ShareButton(selecetedUrl: "Url")
    }
}
