//
//  NewsCell.swift
//  Test Unitbean
//
//  Created by Александр Рублев on 17.03.2021.
//

import Foundation
import  UIKit

class NewsCell: UITableViewCell  {
    
    @IBOutlet weak var newsImageView: WebImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    static let reuseId = "NewsCell"
    
    func configure(withNews new: NewsModel) {
        let date = new.publishedAt.convertToDate()
        dateLabel.text = date?.convertToString()
        newsImageView.set(imageURL: new.urlToImage)
        titleLabel.text = new.title
        authorLabel.text = new.author
    }
}
