//
//  HomeView.swift
//  GenshinGuide
//
//  Created by Kristian Lie on 29/05/22.
//

import SwiftUI

struct domainRow : View {
    var img = ""
    var body: some View{
        VStack{
        
        Image("backpurple")
        }.frame(width: 150, height: 130)
            .cornerRadius(30)
            .shadow(radius: 20)
    }
}

struct characterToday: View {
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

struct HomeView: View {
    var body: some View {
        
        
        HStack {
            NavigationView{
                ZStack{
                    Color.purple
                        
                    VStack{
                        Text("Current Banner")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .padding(.top)
                        Image("currentBanner")
                            .resizable()
                            .frame(width: 400, height: 200, alignment: .top)
                            .cornerRadius(30)
                        VStack{
                            Text("Today Domain")
                                .font(.largeTitle)
                                .fontWeight(.black)
                            ScrollView(.horizontal, showsIndicators: false){
                                HStack{
                                    ForEach(0..<3){i in
                                        domainRow(img: "backpurple").padding()
                                    }
                                }
                            }
                                
                            
                            
                            List{
                                Text("Favourite Character")
                                CharacterRow(title: "Zhongli")
                                CharacterRow(title: "Ayaka")
                            }
                            
                        }
                        
                       
                            .navigationTitle("Home")
                    }
                    
                    
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
