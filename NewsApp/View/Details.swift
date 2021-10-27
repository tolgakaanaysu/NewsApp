import SwiftUI
import Kingfisher
struct Details: View {
    
    var clickedDetails: ModelData
    @State var selection: Int? = nil
    
    
    var body: some View {
     
        VStack {
            
            KFImage(URL(string: clickedDetails.urlToImage))
                .resizable()
                
                .frame(width: UIScreen.main.bounds.width * 0.95,
                       height: UIScreen.main.bounds.height * 0.3)
            
            VStack {
               
                HStack{
                    Text(clickedDetails.author)
                        .frame(alignment: .bottomLeading)
                    
                    Spacer()
                    Image(systemName: "calendar")
                    Text(clickedDetails.publishedAt)
                    
                }
                .padding(.bottom)
                
                Text(clickedDetails.title)
                    .bold()
                    .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.08 , alignment: .topLeading )
                        
                Text(clickedDetails.description)
                
            }
            .padding([.leading, .trailing])
            
            
            NavigationLink(destination: WebView(url: clickedDetails.url), tag: 1, selection: $selection) {
                Button(action: {
                   
                    self.selection = 1
                }) {
                    HStack {
                        Text("News Source")
                       
                    }
                }
               
            }
            .accentColor(Color.black)
            .padding()
            .background(Color(UIColor.lightGray))
            .cornerRadius(4.0)
         
        }
        
     
    
        
    }
}

struct Details_Previews: PreviewProvider {
    static var previews: some View {
        Text("Details")
    }
}
