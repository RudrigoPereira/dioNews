//
//  NewsListRepository.swift
//  dioNews
//
//  Created by Rodrigo Ferreira Pereira on 08/05/23.
//

import Foundation

class NewsListRepository {
    static var shared: NewsListRepository = {
        let instance = NewsListRepository()
        return instance
    }()
    
    private init() {}
    
    func getNewsList(completion: ([NewsModel]?, Error?) -> Void) {
        if let path = Bundle.main.path(forResource: "NewsList", ofType: "json") {
            do {
                let url = URL(fileURLWithPath: path)
                let data = try Data(contentsOf: url, options: .mappedIfSafe)
                
                let decoder = JSONDecoder()
                let newsModelList = try decoder.decode([NewsModel].self, from: data)
                completion(newsModelList, nil)
            } catch {
                completion(nil, error)
            }
        } else {
            
        }
    }
}
