//
//  FirstView.swift
//  nFactorialFirstDayHomework
//
//  Created by Bizhan on 02.06.2025.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        
        @State var isActive = false
        
        NavigationStack {
            ZStack {
                
                GradientBackground(isActive: $isActive)
                
                VStack {
                    Image("avatar")
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .frame(width: 300, height: 300)
                    
                    Text("Ashykhatov Bizhan")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    HStack{
                        Image(systemName: "calendar")
                        Text("16 y.o.")
                        
                        Spacer()
                        
                        Image(systemName: "mappin.and.ellipse")
                        Text("Astana")
                        
                        Spacer()
                        
                        Image(systemName: "person.2.fill")
                        Text("1.2k")
                        
                    }.frame(width: 250)
                    
                    NavigationLink(destination: ShowDetailsView()) {
                        Text("View Details")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(12)
                            .padding(.horizontal)
                    }
                }
            }
        }
    }
}

#Preview {
    FirstView()
}
