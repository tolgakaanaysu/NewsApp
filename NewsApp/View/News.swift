import SwiftUI

struct News: View {
	@State var textField: String
    
    var body: some View {
       
		NavigationView{
		
			VStack {
				
				Text("NEWS")
					.font(.title)
				
				HStack {
					SearchButton(search: textField)
					SearchTextField(search: $textField)
					CancelButton(cancel: $textField)
				}
				.border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1)
				.frame(width: UIScreen.main.bounds.width * 0.8,
					   height: UIScreen.main.bounds.height * 0.1)
				
				ListView()
				
			}
		}
	
	
		
	}
}

struct News_Previews: PreviewProvider {
    static var previews: some View {
        News(textField: "Tolga")
    }
}
