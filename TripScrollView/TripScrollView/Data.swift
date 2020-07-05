//
//  Data.swift
//  TripScrollView
//
//  Created by Apple on 7/5/20.
//  Copyright © 2020 knb. All rights reserved.
//

import Foundation

struct Data {
    let imageName: String
    let labelText: String
    let introduceText: String
}

func getData() -> [Data] {
    let data1 = Data(imageName: "background1", labelText: "Find a trip", introduceText: "A large selection trips available to the underwater world.")
    let data2 = Data(imageName: "background2", labelText: "Book a date", introduceText: "Just a few small steps to the amazing journey of your life.")
    let data3 = Data(imageName: "background3", labelText: "Admire the sea", introduceText:"Enjoy an unforgettable view of the sea depth in a safe way.")
    
    return [data1, data2, data3]
}
