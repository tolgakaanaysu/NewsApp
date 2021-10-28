import SwiftUI
import Kingfisher

struct Row: View {

    var rowData: ModelData

    var body: some View {
        HStack{
            
            VStack(alignment: .leading) {
                Text(rowData.title)
                    .font(.headline)
                    .padding(.bottom)
                
                    
                Text(rowData.description)
                    .font(.body)
                    
                
            }
                        
            KFImage(URL(string: rowData.urlToImage))
                .resizable()
                .frame(width: UIScreen.main.bounds.width * 0.2,
                       height: UIScreen.main.bounds.height * 0.1)
                
        }
        
//Row height - width
        .frame(width: UIScreen.main.bounds.width * 0.8,
               height: UIScreen.main.bounds.height * 0.1)
        
        

    }
}

struct Row_Previews: PreviewProvider {
    static var previews: some View {
        Row(rowData: previewData)
    }
}
