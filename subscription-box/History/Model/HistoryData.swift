//
//  HistoryData.swift
//  subscription-box
//
//  Created by Alberto Dominguez on 2/15/21.
//

import Foundation
import UIKit

struct Box{
    var month: String
    var day: Int
    var year: Int
    var item: [BoxItem]
}

struct BoxItem{
    var name: String
    var description: String
}


struct Data{
    let BoxList : [Box] = [
        Box(month: "February",
            day: 14,
            year: 2021,
            item: [
                BoxItem(name: "gloves", description: "rubber glove"),
                BoxItem(name: "mask", description: "cotton mask"),
                BoxItem(name: "gloves", description: "rubber glove"),
                BoxItem(name: "gloves", description: "rubber glove"),
                BoxItem(name: "gloves", description: "rubber glove")
            ]),
        Box(month: "February",
            day: 6,
            year: 2021,
            item: [
                BoxItem(name: "gloves", description: "rubber glove"),
                BoxItem(name: "gloves", description: "rubber glove"),
                BoxItem(name: "mask", description: "cotton mask"),
                BoxItem(name: "gloves", description: "rubber glove"),
                BoxItem(name: "gloves", description: "rubber glove")
            ]),
        Box(month: "January",
            day: 21,
            year: 2021,
            item: [
                BoxItem(name: "gloves", description: "rubber glove"),
                BoxItem(name: "gloves", description: "rubber glove"),
                BoxItem(name: "gloves", description: "rubber glove"),
                BoxItem(name: "mask", description: "cotton mask"),
                BoxItem(name: "mask", description: "cotton mask")
            ]),
        Box(month: "January",
            day: 13,
            year: 2021,
            item: [
                BoxItem(name: "gloves", description: "rubber glove"),
                BoxItem(name: "gloves", description: "rubber glove"),
                BoxItem(name: "gloves", description: "rubber glove"),
                BoxItem(name: "gloves", description: "rubber glove"),
                BoxItem(name: "gloves", description: "rubber glove")
            ]),
        Box(month: "January",
            day: 1,
            year: 2021,
            item: [
                BoxItem(name: "mask", description: "cotton mask"),
                BoxItem(name: "gloves", description: "rubber glove"),
                BoxItem(name: "gloves", description: "rubber glove"),
                BoxItem(name: "gloves", description: "rubber glove"),
                BoxItem(name: "gloves", description: "rubber glove")
            ]),
        Box(month: "December",
            day: 18,
            year: 2020,
            item: [
                BoxItem(name: "mask", description: "cotton mask"),
                BoxItem(name: "mask", description: "cotton mask"),
                BoxItem(name: "gloves", description: "rubber glove"),
                BoxItem(name: "gloves", description: "rubber glove"),
                BoxItem(name: "gloves", description: "rubber glove")
            ]),
    ]
}
