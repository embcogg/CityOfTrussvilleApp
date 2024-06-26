//
//  LocationPreviewView.swift
//  CityOfTrussvilleApp
//
//  Created by Emily Coggins on 4/28/24.
//

import SwiftUI

struct LocationPreviewView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    let location: Location
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 0) {
            VStack(alignment: .leading, spacing: 16) {
                imageSection
                titleSection
            }
            
            VStack(spacing: 8) {
                learnMoreButton
                nextButton
            }
        }
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(.ultraThinMaterial)
                .offset(y: 65)
        )
        .cornerRadius(10)
    }
}

#Preview {
    ZStack {
        Color.gray.ignoresSafeArea()
        
        LocationPreviewView(location: LocationsDataService.locations.first!)
            .padding()
    }
    .environmentObject(LocationsViewModel())
}

extension LocationPreviewView {
   
    private var imageSection: some View {
        ZStack {
            if let imageName = location.imageNames.first {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
            }
        }
        .padding(6)
        .background(Color.white)
        .cornerRadius(10)
    }
    
    private var titleSection: some View {
        VStack {
            Text(location.name)
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.primary)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        
    }
    
    private var learnMoreButton: some View {
        Button(action: {
            DispatchQueue.main.async {
                vm.sheetLocation = location
            }
        }, label: {
            Text("Learn More")
                .font(.headline)
                .frame(width: 125, height: 30)
        })
        .buttonStyle(.borderedProminent)
        .cornerRadius(10)    }
    
    private var nextButton: some View {
        Button(action: {
            DispatchQueue.main.async {
                vm.nextButtonPressed()
            }
        }, label: {
            Text("Next")
                .font(.headline)
                .frame(width: 125, height: 30)
        })
        .buttonStyle(.bordered)
        .background(Color.white.opacity(0.4))
        .cornerRadius(10)

    }
}
