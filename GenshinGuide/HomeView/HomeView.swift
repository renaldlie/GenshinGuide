//
//  HomeView.swift
//  GenshinGuide
//
//  Created by Kristian Lie on 29/05/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        NavigationView{
            ZStack{
                Color.blue
                Text("Current Banner")
                    .font(.system(size: 20))
                    .fontWeight(.medium)
                Spacer()
                
                  
                    
                    
                    
            }
            .navigationTitle("Home")
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
