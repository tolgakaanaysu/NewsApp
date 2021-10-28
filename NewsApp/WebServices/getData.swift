import Foundation
import Alamofire
import SwiftyJSON

final class getData: ObservableObject {
    
    @Published var dataArray = [ModelData]()
   
    
    init(){
        
        let url = "https://newsapi.org/v2/everything?q=World&page=1&apiKey=ce9afcb6e0cd491baf808d4476cffb1d"
        let session = URLSession(configuration: .default)
        
        session.dataTask(with: URL(string: url)!) { data, _, error in
            
            if error != nil {
                print(error!.localizedDescription)
          
            }
            else {
        
                let json = try! JSON(data: data!)
                let articles = json["articles"].array!
                
                for news in articles {
                    
                    let id = UUID()
                    let author = news["author"].stringValue
                    let title = news["title"].stringValue
                    let description = news["description"].stringValue
                    let a_url = news["url"].stringValue
                    let urlImage = news["urlToImage"].stringValue
                    let content = news["content"].stringValue
                    let publishedAt = news["publishedAt"].stringValue
                    let isFavorite = false
                    
                    
                    DispatchQueue.main.async {
                        self.dataArray.append(ModelData(id: id,
                                                    author: author,
                                                    title: title,
                                                    description: description,
                                                    url: a_url,
                                                    urlToImage: urlImage,
                                                    publishedAt: publishedAt,
                                                    content: content,
                                                    isFavorite: isFavorite))
                    }
                }
            }
            
        }.resume()
        
    }
   
}

 
