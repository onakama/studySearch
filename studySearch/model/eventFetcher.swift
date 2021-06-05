//
//  eventFetcher.swift
//  studySearch
//
//  Created by nekuro on 2021/05/30.
//

import Foundation

class eventFetcher: ObservableObject{
    private let urlLink = "https://connpass.com/api/v1/event/?keyword=YUMEMI.swift"
    
    func fetchEventData(completion: @escaping( [event] ) -> Void){
        URLSession.shared.dataTask(with: URL(string: urlLink)!) { (data, response, error) in
            guard let data = data else { return }
            let decoder: JSONDecoder = JSONDecoder()
            do{
                let searchedResultData = try decoder.decode(eventGroup.self, from:  data)
                DispatchQueue.main.async {
                    completion(searchedResultData.events.reversed())
                }
            }catch{
                print("json convert failed in JSONDecoder." + error.localizedDescription)
            }
        }.resume()
    }
}

