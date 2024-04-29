//
//
//  CityOfTrussvilleApp
//
//  Created by Emily Coggins on 4/28/24.

import SwiftUI

@main
struct CityOfTrussvilleAppApp: App {
    @StateObject private var vm = LocationsViewModel()

    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(vm)
        }
    }
}

struct HomeView: View {
    let maxWidthForIpad: CGFloat = 700

    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .shadow(radius: 10)
                navigationButton("Map", destination: LocationsView(), systemIcon: "map")
                navigationButton("City Website", destination: CityWebsiteView(), systemIcon: "house.fill")
                navigationButton("What's Happening", destination: EventsView(), systemIcon: "calendar")
            }
            .frame(maxWidth: maxWidthForIpad)
            .padding()
            .background(Color(.systemBackground))
        }
    }

    private func navigationButton<Destination: View>(_ label: String, destination: Destination, systemIcon: String) -> some View {
        NavigationLink(destination: destination) {
            HStack {
                Image(systemName: systemIcon)
                    .foregroundColor(.white)
                    .imageScale(.large)
                Text(label)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
            .padding()
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.accentColor)
            .cornerRadius(10)
            .shadow(color: .black.opacity(0.3), radius: 20, x: 0, y: 15)
        }
    }
}
