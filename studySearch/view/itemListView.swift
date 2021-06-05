//
//  itemListView.swift
//  studySearch
//
//  Created by nekuro on 2021/05/30.
//

import SwiftUI

struct itemListView: View {
    
    var eventData: event
    
    var body: some View {
        VStack(alignment: .leading){
            Text(eventData.title)
                .bold()
                .font(.headline)
                .lineLimit(2)
                .padding(.top, 8.0)
                .padding(.bottom, 12.0)
            HStack{
                Image(systemName: "calendar")
                    .imageScale(/*@START_MENU_TOKEN@*/.medium/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.red)
                Text(eventData.startDate)
                    .font(.footnote)
            }
            HStack{
                Image(systemName: "person.fill")
                    .imageScale(.medium)
                    .foregroundColor(.red)
                Text(eventData.ownerDisplayName + " 他")
                    .font(.footnote)
            }.padding(.bottom, 6.0)
            HStack {
                Image(systemName: "mappin.and.ellipse")
                    .imageScale(.medium)
                    .foregroundColor(.red)
                Text(eventData.address)
                    .font(.footnote)
                    .lineLimit(3)
                }.padding(Edge.Set.bottom, 4.0)
            HStack {
                Spacer()
                Text("#" + eventData.hashTag)
                    .foregroundColor(.blue)
                    .font(.caption)
                    .padding(.bottom, 8.0)
            }
        }
    }
}

struct itemListView_Previews: PreviewProvider {
    static var previews: some View {
        itemListView(eventData: mockEventsData[0])
    }
}
