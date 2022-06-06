//
//  ArtifactsView.swift
//  GenshinGuide
//
//  Created by Kristian Lie on 29/05/22.
//

import SwiftUI

private let artifactList: [ArtifactItem] = [
    ArtifactItem(
        image:"BardArrowFeatherWand",
        name:"Bard's Arrow Feather",
        type:"Wanderers Troupe"
    ),
    ArtifactItem(
        image:"Gladiatorfinale",
        name:"Flower of Life",
        type:"Gladiator Finale"
    ),
    ArtifactItem(
        image:"Noblesseoblige",
        name:"Royal Flora",
        type:"Noblesse Oblige"
    )
]

struct ArtifactItem: Identifiable{
    let id = UUID()
    let image: String
    let name: String
    let type: String
  
}

struct ArtifactsView: View {
    var body: some View {
        NavigationView{
            List(artifactList) { ArtifactItem in
                NavigationLink(destination: ArtifactDetailsView(artifactItem: ArtifactItem)){
                HStack {
                    ZStack{
                        Image(ArtifactItem.image)
                            .resizable()
                            .background(Color.black)
                                .shadow(radius: 3)
                                .font(.largeTitle)
                                .frame(width: 80, height: 80)
                                .overlay(Rectangle().stroke(Color.yellow, lineWidth: 3))
                    }
                    Text(ArtifactItem.name)
                        .font(.headline)
                }
    
                }
                }
            .navigationTitle("Artifacts")
            
            
        }
        .background(Color.orange)
    }
}

struct ArtifactDetailsView: View {
    
    let artifactItem: ArtifactItem
    
    var body: some View{
        
            
        VStack(alignment: .center){
            HStack{
                
                
                
            }
            Image(artifactItem.image)
                .resizable()
                
                    .shadow(radius: 3)
                    .font(.largeTitle)
                    .frame(width: 100, height: 100)
            
            
            Text(artifactItem.name)
                .font(.largeTitle)
                .bold()
            Text("Type")
            Text(artifactItem.type)
                .font(.largeTitle)
            
            Spacer()
        }
        .padding()
        .navigationBarTitle(Text(artifactItem.name), displayMode: .inline)
        
            
    }
}

struct ArtifactCircleView: View {
    
    let artifactItem: ArtifactItem
    
    var body: some View{
        ZStack{
            
            Image(artifactItem.image)
                .resizable()
                
                    .shadow(radius: 3)
                    .font(.largeTitle)
                    .frame(width: 80, height: 80)
                    .overlay(Rectangle().stroke(Color.yellow, lineWidth: 3))
        }
    }
}

struct ArtifactsView_Previews: PreviewProvider {
    static var previews: some View {
        ArtifactsView()
    }
}
