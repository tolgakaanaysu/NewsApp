import SwiftUI
import WebKit

struct WebViewService: UIViewRepresentable {
    
    let url: URL?
    
    func makeUIView(context: Context) -> WKWebView {
        let pref = WKWebpagePreferences()
        pref.allowsContentJavaScript = true
        let config = WKWebViewConfiguration()
        config.defaultWebpagePreferences = pref
        return WKWebView(frame: .zero, configuration: config)
        
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
    
        guard let myUrl = url else {
            return
        }
        
        let request = URLRequest(url: myUrl)
        uiView.load(request)
        
    }
    
    
    
}
