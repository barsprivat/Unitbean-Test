//
//  NewsModel.swift
//  Test Unitbean
//
//  Created by Александр Рублев on 20.03.2021.
//

import Foundation

struct NewsModels: Decodable {
    let articles: [NewsModel]
}

struct NewsModel: Decodable {
    let source: Source
    let author: String?
    let title: String?
    let description: String?
    let url: String?
    let urlToImage: String?
    let publishedAt: String
    let content: String?
}

struct Source: Decodable {
    let id: String?
    let name: String
}
