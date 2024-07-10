//
//  ContentView.swift
//  WatchLandMarks Watch App
//
//  Created by Cristian  Veras on 10/7/24.
//

import SwiftUI
import UserNotifications



struct ContentView: View {
    var body: some View {
        LandmarkList()
            .task {
                let center = UNUserNotificationCenter.current()
                _ = try? await center.requestAuthorization(
                    options: [.alert, .sound, .badge]
                )
            }
    }
}


#Preview {
    ContentView()
        .environment(ModelData())
    
}
