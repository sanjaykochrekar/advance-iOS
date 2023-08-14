//: [Previous](@previous)

import Foundation

struct DataModel: Decodable {
    let id: Int?
    let title: String?
    let description: String?
}


func sendRequest() async -> DataModel? {
    let url = URL(string: "https://dummyjson.com/products/1")!
    
    do {

        let (data, _) = try await URLSession.shared.data(from: url)

        let swiftModel = try JSONDecoder().decode(DataModel.self, from: data)
        
        return swiftModel
        
    } catch {
        print(error)
    }
    return nil
    
}

func sendRequest2() async -> DataModel? {
    let url = URL(string: "https://dummyjson.com/products/1")!
    
    do {

        let (data, _) = try await URLSession.shared.data(from: url)

        let swiftModel = try JSONDecoder().decode(DataModel.self, from: data)
        
        return swiftModel
        
    } catch {
        print(error)
    }
    return nil
    
}


Task {

   let value = await sendRequest()
    
//    sendRequest2()
    
    if let v = value {
        print(v.title)

    }
}
