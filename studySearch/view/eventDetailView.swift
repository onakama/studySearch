//
//  eventDetailView.swift
//  studySearch
//
//  Created by nekuro on 2021/05/30.
//

import SwiftUI

struct eventDetailView: View {
    
    let title: String
    let eventUrl: String
    
    var body: some View {
        VStack{
            Text(title)
            Link("compassのイベントページへ",destination: URL(string: eventUrl)!)
        }
    }
}

struct eventDetailView_Previews: PreviewProvider {
    static var previews: some View {
        eventDetailView(title: "", eventUrl: "")
    }
}
