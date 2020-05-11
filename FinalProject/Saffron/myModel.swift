//
//  myModel.swift
//  Saffron
//
//  Created by Ryu, Jason, Jihoon Ban, Michael Coffman on 4/27/20.
//  Copyright © 2020 Team Saffron. All rights reserved.
//

import Foundation

struct myModel {
    let animalName:String
    let fileName: String
    let description: String
    
    static func fetchVideo() -> [myModel] {
        var video1 = myModel(animalName: "Zebra", fileName: "0", description: "Zebra running around")
        var video2 = myModel(animalName: "Lion", fileName: "1", description: "Lion sun bathing")
        var video3 = myModel(animalName: "Duck", fileName: "2", description: "Duck swimming in a pond")
        var video4 = myModel(animalName: "Alligator", fileName: "3", description: "Alligator chilling in the sun")
        var video5 = myModel(animalName: "Monkey", fileName: "4", description: "Monkey eating a banana!")
        
        return [video1, video2, video3, video4, video5]
    }
}
