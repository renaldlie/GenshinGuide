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
            
            .navigationTitle("Weapons")
            
        }
    }
}
struct WeaponsView_Previews: PreviewProvider {
    static var previews: some View {
        WeaponsView()
    }
}
