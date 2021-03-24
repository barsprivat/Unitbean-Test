//
//  DetailNewsViewController.swift
//  Test Unitbean
//
//  Created by Александр Рублев on 22.03.2021.
//

import UIKit

class DetailNewsViewController: UIViewController {
    
    @IBOutlet weak var authorDetail: UILabel!
    @IBOutlet weak var dateDetail: UILabel!
    @IBOutlet weak var titleOneDetail: UILabel!
    @IBOutlet weak var detailImage: WebImageView!
    @IBOutlet weak var titleTwoDetail: UILabel!
    
    
    var selectedNews: NewsModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
     
    }
    
    func setupUI() {
        dateDetail.text = selectedNews.publishedAt.convertToDate()?.convertToString()
        authorDetail.text = selectedNews.author
        titleOneDetail.text = selectedNews.title
        titleTwoDetail.text = selectedNews.description
        detailImage.set(imageURL: selectedNews.urlToImage)
    }
  
}
