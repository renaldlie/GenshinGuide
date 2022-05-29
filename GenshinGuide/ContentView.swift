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
                        .frame(maxWidth: .infinity, alignment: .center)
                }
            CharactersView()
                .tabItem{
                    Image(systemName: "gear")
                    Text("Characters")
                    
                }
            WeaponsView()
                .tabItem{
                    Image(systemName: "gear")
                    Text("Weapons")
                    
                }
            ArtifactsView()
                .tabItem{
                    Image(systemName: "gear")
                    Text("Artifacts")
                    
                }
            MapView()
                .tabItem{
                    Image(systemName: "gear")
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
