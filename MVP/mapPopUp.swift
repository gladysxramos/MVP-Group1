//
//  ContentView.swift
//  PracticeMap
//
//  Created by Scholar on 7/30/24.
//

import SwiftUI
import MapKit

extension CLLocationCoordinate2D {
    static let newYork: Self = .init(
        latitude: 40.730610,
        longitude: -73.935242
    )
    
    static let seattle: Self = .init(
        latitude: 47.608013,
        longitude: -122.335167
    )
    
    static let sanFrancisco: Self = .init(
        latitude: 37.733795,
        longitude: -122.446747
    )
    
    static let losAngeles: Self = .init(
        latitude: 34.0549,
        longitude: -118.2426
    )
    

    
}

struct mapPopUp: View {
    @State private var position: MapCameraPosition = .userLocation(
            fallback: .automatic)
    var body: some View {
        VStack{
            Spacer()
                .frame(height: 50.0)
            Map(position: $position) {
                Annotation("Seattle", coordinate: .seattle){
                    Image(systemName: "mappin").foregroundStyle(.black)
                        .padding()
                        .background(.red)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    
                }
                Marker(coordinate: .newYork) {
                                Label("New York", systemImage: "mappin")
                }
                Marker("San Francisco", monogram: Text("SF"), coordinate: .sanFrancisco)
                Marker("Los Angeles", monogram: Text("LA"), coordinate: .losAngeles)
            }
            .mapControls {
                MapUserLocationButton()
            }
            .padding([.leading, .bottom, .trailing])
            .onAppear {
                CLLocationManager().requestWhenInUseAuthorization()
            }
            .frame(width: 400.0, height: 400.0)
            Spacer()
                
            
        }
    }
}

#Preview {
    mapPopUp()
}
