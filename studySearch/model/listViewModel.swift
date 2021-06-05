//
//  listViewModel.swift
//  studySearch
//
//  Created by nekuro on 2021/05/30.
//

import Foundation

class listViewModel: ObservableObject{
    let fetcher = eventFetcher()
    @Published var eventData: [event] = []
    
    init(){
        self.fetcher.fetchEventData {(events) in
            self.eventData = events
        }
    }
}
