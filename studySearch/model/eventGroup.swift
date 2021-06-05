//
//  eventGroup.swift
//  studySearch
//
//  Created by nekuro on 2021/05/30.
//

import Foundation

struct eventGroup: Decodable{
    var events: [event]
}
var mockEventsData: [event]
    = [event(id: 1,
             title: "YUMEMI.swift #1 ~WWDC19報告会~",
             eventUrl: "https://yumemi.connpass.com/event/131175/",
             hashTag: "yumemi_swift",
             startDate: "2019-06-24T19:00+09:00",
             address: "東京都世田谷区",
             ownerDisplayName: "株式会社ゆめみ")]

