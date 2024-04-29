import Foundation
import SwiftUI
import MapKit

class LocationsViewModel: ObservableObject {
    
    // All loaded locations
    @Published var locations: [Location]
    
    // Current location on the map
    @Published var mapLocation: Location
    
    // Current region on the map
    @Published var mapRegion: MKCoordinateRegion
    
    // Constant for the map span
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
    
    // Boolean to show or hide the list of locations
    @Published var showLocationsList: Bool = false
    
    // Property to manage the showing of location details
    @Published var sheetLocation: Location? = nil
    
    init() {
        let initialLocations = LocationsDataService.locations
        self.locations = initialLocations
        let initialLocation = initialLocations.first!
        self.mapLocation = initialLocation
        self.mapRegion = MKCoordinateRegion(center: initialLocation.coordinates, span: mapSpan)
    }
    
    func toggleLocationsList() {
        withAnimation(.easeInOut) {
            showLocationsList.toggle()
        }
    }
    
    func updateLocation(to location: Location) {
        withAnimation(.easeInOut) {
            mapLocation = location
            updateMapRegion(to: location.coordinates)
        }
    }
    
    private func updateMapRegion(to coordinates: CLLocationCoordinate2D) {
        mapRegion = MKCoordinateRegion(center: coordinates, span: mapSpan)
    }
    
    func showNextLocation(location: Location) {
        updateLocation(to: location)
    }

    func nextButtonPressed() {
        guard let currentIndex = locations.firstIndex(where: {$0 == mapLocation}) else {
            print("Could not find current index in locations array")
            return
        }

        let nextIndex = currentIndex + 1
        if nextIndex >= locations.count {
            // Cycle back to the first location if next index is out of range
            updateLocation(to: locations.first!)
        } else {
            updateLocation(to: locations[nextIndex])
        }
    }
}
