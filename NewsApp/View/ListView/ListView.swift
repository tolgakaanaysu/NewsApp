
import SwiftUI

struct ListView: View {
    
   
    @ObservedObject var obs = getData()
    
    var body: some View {
        
        
            List {
                ForEach(obs.datas) { i in
                   
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
        ListView()
    }
}
