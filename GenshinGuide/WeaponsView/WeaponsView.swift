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
        rating:"5 star",
        type:"Polearm",
        baseatk:"49",
        secstat:"CRITDMG%",
        description:"HP increased by 20%. Additionally, provides an ATK Bonus based on 0.8% of the wielder’s Max HP. When the wielder's HP is less than 50%, this ATK Bonus is increased by an additional 1% of Max HP."
    ),
    WeaponItem(
        image:"Amosbow",
        name:"Amos Bow",
        rating:"5 star",
        type:"Bow",
        baseatk:"46",
        secstat:"ATK%",
        description:"Increases Normal Attack and Aimed Shot DMG by 18%. Increases DMG by 12% for every 0.1s that an arrow is in flight. Stacks up to 5 times on each arrow."
    ),
    WeaponItem(
        image:"SkywardBlade",
        name:"Skyward Blade",
        rating:"5 star",
        type:"Sword",
        baseatk:"46",
        secstat:"ER%",
        description:"CRIT Rate increased by 4%. Gains Skypiercing Might upon using an Elemental Burst: Increases Movement SPD by 10%, increases ATK SPD by 10%, and increases the DMG of Normal and Charged Attack hits by 20% for 12s."
    ),
    WeaponItem(
        image:"Dragonsbane",
        name:"Dragon's Bane",
        rating:"4 star",
        type:"Polearm",
        baseatk:"41",
        secstat:"EM+",
        description:"Increases DMG against enemies affected by Hydro or Pyro by 20%."
    ),
    WeaponItem(
        image:"Serpentsspine",
        name:"Serpent Spine",
        rating:"4 star",
        type:"Claymore",
        baseatk:"42",
        secstat:"CRITR%",
        description:"Every 4s a character is on the field, they will deal 6% more DMG and take 3% more DMG. This effect has a maximum of 5 stacks and will not be reset if the character leaves the field, but will be reduced by 1 stack when the character takes DMG."
    )
]

struct WeaponItem: Identifiable{
    let id = UUID()
    let image: String
    let name: String
    let rating: String
    let type: String
    let baseatk: String
    let secstat: String
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
            Image(weaponItem.rating)
                .resizable()
                
                    
                    .font(.largeTitle)
                    .frame(width: 300, height: 50)
            
            
            Text(weaponItem.name)
                .font(.largeTitle)
                .bold()
            
            Text("Type : " + weaponItem.type)
            Text("Base ATK : " + weaponItem.baseatk)
            Text("Secondary Stat : " + weaponItem.secstat)
            Text("Special Ability")
                .font(.largeTitle)
            
            Text(weaponItem.description)
            Text("Ascension Materials")
                .font(.largeTitle)
            
            
                
            
           
        }
        Spacer()
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
