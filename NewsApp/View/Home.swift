import SwiftUI

struct Home: View {
	
	@State var textField: String

	var body: some View {
       
		NavigationView {
		
			VStack {
				
				HStack {
					SearchButton(search: textField)
					SearchTextField(search: $textField)
					CancelButton(cancel: $textField)
				}
				.border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1)
				.frame(width: UIScreen.main.bounds.width * 0.8,
					   height: UIScreen.main.bounds.height * 0.1)
				
				ListView(isFavoriteTab: false)
				
			}
			.navigationTitle("News")
			.navigationBarTitleDisplayMode(.inline)
			
		}
	}
}

struct News_Previews: PreviewProvider {
    static var previews: some View {
        Home(textField: "Tolga")
    }
}
