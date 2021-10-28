import Foundation

struct ModelData: Codable, Identifiable {
    var id: UUID
    let author: String
    let title: String
    let description: String
    let url: String
    let urlToImage: String
    let publishedAt: String
    let content: String
    var isFavorite: Bool

}



//preview example
let previewData = ModelData(id: UUID(), author: "author", title: "title", description: "description", url: "url", urlToImage: "www", publishedAt: "06.06.1001", content: "content",isFavorite: true)
