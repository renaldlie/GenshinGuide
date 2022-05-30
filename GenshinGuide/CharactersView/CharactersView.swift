//
//  CharactersView.swift
//  GenshinGuide
//
//  Created by Kristian Lie on 29/05/22.
//

import SwiftUI


private let characterList: [CharacterItem] = [
    CharacterItem(
        image:"ZhongLi",
        name:"Zhongli",
        element:"Geo",
        description:"His name is morax"
    )
]

struct CharacterItem: Identifiable{
    let id = UUID()
    let image: String
    let name: String
    let element: String
    let description: String
   
}



struct CharactersView: View {
    
    
    var body: some View {
        NavigationView{
            List(characterList) { CharacterItem in
                NavigationLink(destination: DetailsView(characterItem: CharacterItem)){
                HStack {
                    CharacterCircleView(characterItem: CharacterItem)
                    
                    }
                    Text(CharacterItem.name)
                        .font(.headline)
                }
                
            }
            .navigationTitle("Characters")
            
        }
    }
}

struct DetailsView: View {
    
    let characterItem: CharacterItem
    
    var body: some View{
        
            
        VStack(alignment: .center){
            HStack{
                
                
                
            }
            Image(characterItem.image)
                .resizable()
                
                    .shadow(radius: 3)
                    .font(.largeTitle)
                    .frame(width: 100, height: 100)
            
            
            Text(characterItem.name)
                .font(.largeTitle)
                .bold()
            Text("Element : " + characterItem.element)
                .font(.largeTitle)
                .bold()
            Text("Description : " + characterItem.description)
                .font(.largeTitle)
            
            Spacer()
        }
        .padding()
        .navigationBarTitle(Text(characterItem.name), displayMode: .inline)
        
            
    }
}

struct CharacterCircleView: View {
    
    let characterItem: CharacterItem
    
    var body: some View{
        ZStack{
            
            Image(characterItem.image)
                .resizable()
                
                    .shadow(radius: 3)
                    .font(.largeTitle)
                    .frame(width: 80, height: 80)
                    .overlay(Rectangle().stroke(Color.yellow, lineWidth: 3))
        }
    }
}
struct CharactersView_Previews: PreviewProvider {
    static var previews: some View {
        CharactersView()
    }
}
