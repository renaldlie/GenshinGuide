//
//  WeaponsView.swift
//  GenshinGuide
//
//  Created by Kristian Lie on 29/05/22.
//

import SwiftUI

private let weaponList: [WeaponItem] = [
    WeaponItem(
        image:"Staffofhoma",
        name:"Staff Of Homa",
        description:"Just a sword"
    )
]

struct WeaponItem: Identifiable{
    let id = UUID()
    let image: String
    let name: String
    let description: String
}

struct WeaponsView: View {
    var body: some View {
        NavigationView{
            
            List(weaponList) { WeaponItem in
                NavigationLink(destination: WeaponDetailsView(weaponItem:WeaponItem)){
                HStack {
                    
                    ZStack{
                        
                        Image(WeaponItem.image)
                            .resizable()
                                .shadow(radius: 3)
                                .font(.largeTitle)
                                .frame(width: 80, height: 80)
                                .overlay(Rectangle().stroke(Color.yellow, lineWidth: 3))
                    }
                    Text(WeaponItem.name)
                        .font(.headline)
                }
                
                }
            }
            
            .navigationTitle("Weapons")
            
        }
    }
}

struct WeaponDetailsView: View {
    
    let weaponItem: WeaponItem
    
    var body: some View{
        
            
        VStack(alignment: .center){
            HStack{
                
                
                
            }
            Image(weaponItem.image)
                .resizable()
                
                    .shadow(radius: 3)
                    .font(.largeTitle)
                    .frame(width: 100, height: 100)
            
            
            Text(weaponItem.name)
                .font(.largeTitle)
                .bold()
          
            Text("Description : " + weaponItem.description)
                .font(.largeTitle)
            
            Spacer()
        }
        .padding()
        .navigationBarTitle(Text(weaponItem.name), displayMode: .inline)
        
            
    }
}

struct WeaponCircleView: View {
    
    let weaponItem: CharacterItem
    
    var body: some View{
        ZStack{
            
            Image(weaponItem.image)
                .resizable()
                
                    .shadow(radius: 3)
                    .font(.largeTitle)
                    .frame(width: 80, height: 80)
                    .overlay(Rectangle().stroke(Color.yellow, lineWidth: 3))
        }
    }
}
struct WeaponsView_Previews: PreviewProvider {
    static var previews: some View {
        WeaponsView()
    }
}
