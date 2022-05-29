//
//  CharactersView.swift
//  GenshinGuide
//
//  Created by Kristian Lie on 29/05/22.
//

import SwiftUI

let numb:Int = 9

struct Character: Identifiable{
    var id: Int
    
    let charactername, imageName: String
    
}



struct CharactersView: View {
    
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.white
                VStack{
                    List{
                    
                        CharacterRow(title: "Zhongli")
                        CharacterRow(title: "Ayaka")
                    }
                    
                    
                    
                }
                    
            }
            .navigationTitle("Characters")
            
        }
    }
}

struct CharacterRow: View {
    let title: String
    
    var body: some View{
        Label(
            title: { Text(title) },
            icon: { Image("ZhongLi")
                    .resizable()
                    .background(.yellow)
                    .cornerRadius(30)
                    .frame(width: 50, height: 50)}
                
            
        )
    }
}
struct CharactersView_Previews: PreviewProvider {
    static var previews: some View {
        CharactersView()
    }
}
