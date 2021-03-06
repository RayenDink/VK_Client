//
//  News.swift
//  VK_Client
//
//  Created by Rayen on 11/13/20.
//

import Foundation

struct NewsModel: Codable {
    let postId: Int
    let text: String
    let date: Double
    let attachments: [Attachment]?
    let likes: LikeModel
    let comments: CommentModel
    let sourceId: Int
    var avatarUrl: String?
    var creatorName: String?
    var photosUrl: [String]? {
        get {
            let photosUrl = attachments?.compactMap{ $0.photo?.sizes?.first?.url }
            return photosUrl
        }
    }
    
    func getStringDate() -> String {
        let dateFormatter = DateFormatterVK()
        return dateFormatter.convertDate(timestamp: date)
    }
}

struct Attachment: Codable {
    let type: String?
    let photo: PhotoNews?
}

struct LikeModel: Codable {
    let count: Int
}

struct CommentModel: Codable {
    let count: Int
}

struct ResponseNews: Codable {
    let response: ItemsNews
}

struct ItemsNews: Codable {
    let items: [NewsModel]?
    let profiles: [ProfileNews]?
    let groups: [GroupNews]?
    let nextFrom: String
}
struct ProfileNews: Codable {
    let id: Int
    let firstName: String
    let lastName: String
    let photo100: String
}
struct GroupNews: Codable {
    let id: Int
    let name: String
    let photo100: String
}

struct PhotoNews: Codable {
    let id: Int?
    let ownerId: Int?
    let sizes: [SizeNews]?
}
struct SizeNews: Codable {
    let type: String?
    let url: String?
}
