//
//  ContentView.swift
//  GenshinGuide
//
//  Created by Kristian Lie on 29/05/22.
//

import SwiftUI







struct ContentView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem{
                    Image(systemName: "house")
                    Text("Home")
                        
                }
            CharactersView()
                .tabItem{
                    Image(systemName: "person")
                    Text("Characters")
                    
                }
            WeaponsView()
                .tabItem{
                    Image(systemName: "hammer")
                    Text("Weapons")
                    
                }
            ArtifactsView()
                .tabItem{
                    Image(systemName: "crown")
                    Text("Artifacts")
                    
                }
            MapView()
                .tabItem{
                    Image(systemName: "map")
                    Text("Map")
                    
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
