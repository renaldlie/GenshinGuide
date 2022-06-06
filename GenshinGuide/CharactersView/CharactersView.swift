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
        weapon:"Polearm",
        description:"He is a consultant of the Wangsheng Funeral Parlor. He is later revealed to be the current vessel of the Geo Archon, Morax, who has decided to experience the world from the perspective of a mortal",
        rating:"5 star"
    ),
    CharacterItem(
        image:"Ayaka",
        name:"Ayaka",
        element:"Cryo",
        weapon:"Sword",
        description:"Ayaka is a kind-hearted girl with a pleasant temperament who treats others with politeness and courtesy. She holds the people of Inazuma dear to her heart and often goes out of her way to personally assist in all kinds of matters; being a member of the Yashiro Commission, she feels that she must meet the people's needs. ",
        rating:"5 star"
    ),
    CharacterItem(
        image:"Xiangling",
        name:"Xiangling",
        element:"Pyro",
        weapon:"Polearm",
        description:"She is the Head Chef at the Wanmin Restaurant and runs it alongside her father Chef Mao. As a chef, Xiangling isn't afraid to try out different recipes or exotic ingredients... making her dishes sometimes quite unique.",
        rating:"4 star"
    ),
    CharacterItem(
        image:"Chongyun",
        name:"Chongyun",
        element:"Cryo",
        weapon:"Claymore",
        description:"An exorcist from Liyue, Chongyun was born with excessive yang (positive) energy, which has proven to be both a help and a hindrance. It makes him a very effective exorcist, but it also means he has never seen a spirit for himself — they flee before he can even lay eyes on them. It has also made him particularly susceptible to any kind of heat or strong emotion, which leads to some rather... unexpected results.",
        rating:"4 star"
    ),
    CharacterItem(
        image:"Beidou",
        name:"Beidou",
        element:"Lightning",
        weapon:"Claymore",
        description:"She is the captain of The Crux, a renowned crew in Liyue. Besides her capabilities as a fleet captain and her immense strength, many in Liyue know her for her lack of fear towards the Tianquan of the Liyue Qixing, Ningguang — a trait that the other appreciates, yet grows irritated by.",
        rating:"4 star"
    )
]

struct CharacterItem: Identifiable{
    let id = UUID()
    let image: String
    let name: String
    let element: String
    let weapon: String
    let description: String
    let rating: String
   
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
            Image(characterItem.rating)
                .resizable()
                
                    
                    .font(.largeTitle)
                    .frame(width: 300, height: 50)
            
            
            Text(characterItem.name)
            Text("Weapon : " + characterItem.weapon)
                
            Text("Vision : " + characterItem.element)
                
            Text("Description")
                .font(.largeTitle)
            
            Text(characterItem.description)
            Text("Ascension Materials")
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
