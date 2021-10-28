
import SwiftUI

struct ListView: View {
   
    @ObservedObject var obs = getData()
    
    var isFavoriteTab: Bool
    var filteredLandmarkArray: [ModelData] {
        obs.dataArray.filter { i in
            ( !isFavoriteTab || i.isFavorite)
        }
    }
    
    var body: some View {
        
            List {
                ForEach(filteredLandmarkArray) { i in
                   
                    NavigationLink(
                        destination: Details(clickedDetails: i),
                        label: {
                            Row(rowData: i)
              
                        })
                }
        }
    }
}

struct List_Previews: PreviewProvider {
    static var previews: some View {
        Text("Deneme")
    }
}
