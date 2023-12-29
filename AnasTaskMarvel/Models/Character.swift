//
//  Character.swift
//  Anas_Task
//
//  Created by mac on 08/11/2023.
//

import Foundation

struct ApiResult:Decodable{
    var data : ApiCharacterData
}

struct ApiCharacterData:Decodable{
 
    var count :Int
    var total :Int
    var offset :Int
    var limit :Int
    var results:[Character]
    
}

struct Character:Decodable{
    var id:Int
    var name:String
    var description:String
    var thumbnail:thumbnailPath
    var comics:Comics
    var series:Comics
    var stories:Comics
    var events:Comics
    var urls:[Urls]
}

struct Comics:Decodable {
    let available: Int
    let collectionURI: String
    let items: [Item]
    let returned: Int
}

// MARK: - Item
struct Item :Decodable{
    let resourceURI: String
    let name: String
}
struct Urls :Decodable{
    let type: String
    let url: String
}
struct thumbnailPath :Decodable{
    let path: String
    let exten: String
    enum CodingKeys:String, CodingKey {
        case path
        case exten = "extension"
    }
}

let dummyCharacters: [Character] = [
    Character(
        id: 1009220,
        name: "Spider-Man",
        description: "Bitten by a radioactive spider, high school student Peter Parker gained the powers of a spider.",
        thumbnail: thumbnailPath(path: "http://i.annihil.us/u/prod/marvel/i/mg/3/20/5232158de5b16.jpg", exten: "jpg"),
        comics: Comics(available: 23, collectionURI: "http://gateway.marvel.com/v1/public/characters/1009220/comics", items: [], returned: 0),
        series: Comics(available: 12, collectionURI: "http://gateway.marvel.com/v1/public/characters/1009220/series", items: [], returned: 0),
        stories: Comics(available: 1, collectionURI: "http://gateway.marvel.com/v1/public/characters/1009220/stories", items: [], returned: 0),
        events: Comics(available: 5, collectionURI: "http://gateway.marvel.com/v1/public/characters/1009220/events", items: [], returned: 0),
        urls: [Urls(type: "detail", url: "http://marvel.com/characters/1009220/spider-man")]
    ),
    Character(
        id: 1011334,
        name: "Iron Man",
        description: "Wounded, captured and forced to build a weapon by his enemies, billionaire industrialist Tony Stark instead created an advanced suit of armor to save his life and escape captivity.",
        thumbnail:thumbnailPath(path: "http://gateway.marvel.com/v1/public/stories/92083", exten: "jpg"),
        comics: Comics(available: 35, collectionURI: "http://gateway.marvel.com/v1/public/characters/1011334/comics", items: [], returned: 0),
        series: Comics(available: 18, collectionURI: "http://gateway.marvel.com/v1/public/characters/1011334/series", items: [], returned: 0),
        stories: Comics(available: 2, collectionURI: "http://gateway.marvel.com/v1/public/characters/1011334/stories", items: [], returned: 0),
        events: Comics(available: 7, collectionURI: "http://gateway.marvel.com/v1/public/characters/1011334/events", items: [], returned: 0),
        urls: [Urls(type: "detail", url: "http://marvel.com/characters/1011334/iron_man")]
    ),
    // Add more characters as needed
]
