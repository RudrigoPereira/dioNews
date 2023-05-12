//
//  NewsViewController.swift
//  dioNews
//
//  Created by Rodrigo Ferreira Pereira on 11/05/23.
//

import UIKit
import WebKit

class NewsViewController: UIViewController {
    
    @IBOutlet weak var newsWebView: WKWebView!

    var news: NewsModel? {
        didSet {
            self.title = news?.author
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupWebView()
    }
    
    private func setupWebView() {
        guard let news = news, let url = URL(string: news.url) else { return }
        
        self.newsWebView.load(URLRequest(url: url))
    }
}
