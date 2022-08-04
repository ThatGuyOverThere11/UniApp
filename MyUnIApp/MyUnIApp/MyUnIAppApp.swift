//
//  MyUnIAppApp.swift
//  MyUnIApp
//
//  Created by IACD-06 on 2022/07/25.
//

import SwiftUI
import Firebase


@main
struct MyUnIAppApp: App {

    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            TabView{
                NavigationView{
                    ContentView()
                }
                .tabItem{
                    Image(systemName: "menucard.fill")
                }
                NavigationView{
                    MapView()
                }
                .tabItem{
                    Image(systemName: "map.fill")
                }
                NavigationView {
                    ClubsView()
                }
                .tabItem{
                    Image(systemName: "house.fill")
                }
                NavigationView{
                    ClassesView()
                }.tabItem{
                    Image(systemName: "pencil.circle.fill")
                }
            }
        }
    }
}
