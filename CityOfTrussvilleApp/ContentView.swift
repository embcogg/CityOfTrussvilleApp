//
//  ContentView.swift
//  CityOfTrussvilleApp
//
//  Created by Emily Coggins on 4/27/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    FeatureCard(featureName: "Interactive Map", featureIcon: "map", destination: LocationsView())
                    //FeatureCard(featureName: "What's Happening", featureIcon: "calendar", destination: EventsView())
                    //FeatureCard(featureName: "Important Links", featureIcon: "link", destination: LinksView())
                    //FeatureCard(featureName: "Local News", featureIcon: "newspaper", destination: NewsView())
                    //FeatureCard(featureName: "City Services", featureIcon: "gear", destination: ServicesView())
                }
                .padding()
            }
            .navigationTitle("Welcome to City Of Trussville")
        }
    }
}

struct FeatureCard<Destination: View>: View {
    var featureName: String
    var featureIcon: String
    var destination: Destination

    var body: some View {
        NavigationLink(destination: destination) {
            HStack {
                Image(systemName: "cityImage")
                    .foregroundColor(.navy)
                    .imageScale(.large)
                Text(featureName)
                    .fontWeight(.medium)
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.gray.opacity(0.1))
            .cornerRadius(10)
        }
        .buttonStyle(PlainButtonStyle())
    }
}


// Extension to define a custom color if "navy" isn't predefined in SwiftUI
extension Color {
    static let navy = Color(red: 0.0 / 255, green: 52.0 / 255, blue: 87.0 / 255)
}




#Preview {
    ContentView()
}
