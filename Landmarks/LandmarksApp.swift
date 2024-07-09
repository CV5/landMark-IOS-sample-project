//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Cristian  Veras on 6/7/24.
//

import SwiftUI



@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()


    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
