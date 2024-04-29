//
//  EventView.swift
//  CityOfTrussvilleApp
//
//  Created by Emily Coggins on 4/28/24.
//

import Foundation
import SwiftUI

struct EventsView: View {
    let events = Event.sampleEvents

    var body: some View {
        List(events) { event in
            VStack(alignment: .leading, spacing: 10) {
                Text(event.name)
                    .font(.headline)
                
                Text("\(event.date) at \(event.time)")
                    .font(.subheadline)
                
                if let location = event.location {
                    Text(location)
                        .font(.footnote)
                }
                
                Text(event.isFree ? "Free Event" : "Ticket Required")
                    .font(.caption)
                    .foregroundColor(event.isFree ? .green : .red)
            }
            .padding(.vertical)
        }
        .navigationTitle("Local Events")
    }
}

extension Event {
    static let sampleEvents = [
        Event(name: "Taste Of Trussville", date: "May 9, 2024", time: "5:30 pm - 8:00 pm", location: nil, isFree: false),
        Event(name: "Trussville Restaurant Week", date: "May 10 - May 26, 2024", time: "All Day", location: nil, isFree: false),
        Event(name: "Free Movie On The Mall", date: "June 7, 2024", time: "5:30 pm - 10:00 pm", location: nil, isFree: true),
        Event(name: "Trussville Mayor’s Prayer Breakfast", date: "August 2, 2024", time: "6:30 am - 8:00 am", location: nil, isFree: false),
        Event(name: "Trussville Dog Daze", date: "September 14, 2024", time: "10:00 am - 4:00 pm", location: "Trussville Mall 225 Parkway Drive, Trussville, AL, United States", isFree: true),
        Event(name: "Legislative Breakfast", date: "November 14, 2024", time: "6:45 am - 8:00 am", location: nil, isFree: false),
        Event(name: "Community Caroling and Tree Lighting Ceremony", date: "December 1, 2024", time: "4:00 pm - 6:00 pm", location: nil, isFree: true),
        Event(name: "Trussville Christmas Parade", date: "December 14, 2024", time: "2:00 pm - 4:00 pm", location: nil, isFree: true)
    ]
}

