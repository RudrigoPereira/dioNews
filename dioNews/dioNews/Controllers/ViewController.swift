//
//  ViewController.swift
//  dioNews
//
//  Created by Rodrigo Ferreira Pereira on 08/05/23.
//

import UIKit

class ViewController: UIViewController, NewsListLocalDataProviderProtocol {
    
    var localDataProvider: NewsListLocalDataProvider?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initLocalDataProvider()
    }
    
    private func initLocalDataProvider() {
        self.localDataProvider = NewsListLocalDataProvider()
        self.localDataProvider?.delegate = self
        self.localDataProvider?.getNewsList()
    }
    
    func success(model: Any) {
        print("Model: \(model)")
    }
    
    func errorData(_ provide: GenericDataProvider?, error: Error) {
        print("Error: \(error.localizedDescription)")
    }
}

