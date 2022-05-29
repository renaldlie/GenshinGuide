//
//  HomeView.swift
//  GenshinGuide
//
//  Created by Kristian Lie on 29/05/22.
//

import SwiftUI

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
                            .padding()
                            .frame(width: 400, height: 200, alignment: .top)
                            .cornerRadius(30)
                        VStack{
                            Color.blue
                            
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
