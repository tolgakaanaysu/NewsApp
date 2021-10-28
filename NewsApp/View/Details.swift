import SwiftUI
import Kingfisher
struct Details: View {
    
    
    @State var selection: Int? = nil
	var clickedDetails: ModelData
    var body: some View {
  
        VStack {
			
//Selected News Image
            KFImage(URL(string: clickedDetails.urlToImage))
                .resizable()
                
                .frame(width: UIScreen.main.bounds.width * 0.95,
                       height: UIScreen.main.bounds.height * 0.3)
            
            VStack {
                HStack{
					
//Selected News's Author
                    Text(clickedDetails.author)
                        .frame(alignment: .bottomLeading)
                    
                    Spacer()
                    Image(systemName: "calendar")
                    Text(clickedDetails.publishedAt)
						
                    
                }
                .padding(.bottom)
				
//Selected News's Title
                Text(clickedDetails.title)
                    .bold()
                    .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.08 , alignment: .topLeading )
                    
//Selected News's Description
                Text(clickedDetails.description)
                
            }
            .padding([.leading, .trailing])
            
//Clicked 'New Source' Button
			NavigationLink(destination: WebView(url: clickedDetails.url), tag: 1, selection: $selection) {
                Button(action: {
                   
                    self.selection = 1
                }) {
                    HStack {
                        Text("News Source")
                       
                    }
                }
               
            }
			.padding()
            .accentColor(Color.black)
			.background(Color(UIColor.systemGray4))
            .cornerRadius(4.0)
			
           
			
		}
		
//Toolbar Items #Share #Like
		.toolbar {
			ToolbarItemGroup(placement: .navigationBarTrailing ) {
				
				ShareButton(selecetedUrl: clickedDetails.url)
				FavoriteButton()
			
				
			}
		}
	}
}

struct Details_Previews: PreviewProvider {
    static var previews: some View {
        Text("Details")
    }
}
