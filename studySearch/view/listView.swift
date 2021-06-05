//
//  listView.swift
//  studySearch
//
//  Created by nekuro on 2021/05/30.
//

import SwiftUI

struct listView: View {
    @ObservedObject var listVM = listViewModel()
    
    var body: some View {
        NavigationView{
            List(listVM.eventData){ event in
                NavigationLink(destination: eventDetailView(title: event.title, eventUrl: event.eventUrl)){
                    itemListView(eventData: event)
                }
            }
            .navigationBarTitle(Text("YUMEMI.swift一覧"))
        }
    }
}

struct listView_Previews: PreviewProvider {
    static var previews: some View {
        listView()
    }
}
