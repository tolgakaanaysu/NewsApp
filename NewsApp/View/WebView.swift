import SwiftUI

struct WebView: View {
    
    var url: String
    
    var body: some View {
        
    
            WebViewService(url: URL(string: "\(url)"))
                .navigationBarTitle("News Source", displayMode: .inline)
                
                
              
    }
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView(url: "https://www.google.com.tr")
    }
}
