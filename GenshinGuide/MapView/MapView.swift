//
//  MapView.swift
//  GenshinGuide
//
//  Created by Kristian Lie on 29/05/22.
//

import SwiftUI

struct MapView: View {
    var body: some View {
        
        NavigationView{
            
            ZStack{
                Image("Teyvat_Map")
                    .resizable()
                Link(destination: URL(string: "https://genshin-impact-map.appsample.com")!,
                     label:{
                    Label(
                        title: { Text("Teyvat Map")},
                        icon: { Image(systemName: "map")}
                    )
                        .frame(width: 150, height: 50, alignment: .center
                        )
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(30)
                })
                    
            }
            .navigationTitle("Map")
            
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
