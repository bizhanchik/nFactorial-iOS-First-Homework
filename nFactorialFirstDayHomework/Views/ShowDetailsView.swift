//
//  ShowDetailsView.swift
//  nFactorialFirstDayHomework
//
//  Created by Bizhan on 02.06.2025.
//

import SwiftUI

struct ShowDetailsView: View {
    @Environment(\.dismiss) var dismiss
    @State private var animateIn = false
    @State var isActive = false
    
    var body: some View {
        VStack{
            ZStack{
                RoundedRectangle(cornerRadius: 0, style: .circular)
                    .fill(LinearGradient(colors: [.blue.opacity(0.5), .orange.opacity(0.2)], startPoint: .top, endPoint: .bottom))
                    .frame(height: 250)
                //задний фон для ZStack
                GradientBackground(isActive: $isActive)
                    .frame(height: 250)
                
                //ава, имя, никнейм
                HStack {
                    Image("avatar")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .padding(.leading, 28)
                        .offset(x: animateIn ? 0 : -200)
                        .animation(.easeInOut(duration: 0.6).delay(0.1), value: animateIn)
                    
                    
                    
                    VStack(alignment: .leading){
                        Text("Bizhan Ashykhatov")
                            .font(.title3)
                            .fontWeight(.bold)
                            .offset(x: animateIn ? 0 : -400)
                            .animation(.easeInOut(duration: 0.7).delay(0.2), value: animateIn)
                        Text("@bizhan")
                            .font(.subheadline)
                            .offset(x: animateIn ? 0 : -200)
                            .animation(.easeInOut(duration: 0.6).delay(0.3), value: animateIn)
                    }
                    .padding(.leading, 28)
                    
                    Spacer()
                    
                    
                    
                }
                .padding(.top, 28)
            }
            
            //доп информация
            HStack{
                VStack(alignment: .leading) {
                    
                    TypingTextView(fullText: "Software Engineer in AITU College 💻")
                        .font(.headline)
                    TypingTextView(fullText: "Kazakhstan 🇰🇿")
                        .font(.subheadline)
                    
                    TypingTextView(fullText: "Goal:")
                        .font(.headline)
                        .padding(.top,24)
                    
                    TypingTextView(fullText:"To become a top iOS developer and launch my own app 🚀")

                    TypingTextView(fullText: "My idea:")
                        .font(.headline)
                        .padding(.top,24)
                    
                    TypingTextView(fullText: "AuarAI – a smart outfit suggestion app powered by AI 🤖👕")

                    
                    
                    TypingTextView(fullText: "About: ")
                        .font(.headline)
                        .padding(.top,24)
                    
                    TypingTextView(fullText: "Super passionate about mobile development, design, and creating cool things in SwiftUI 🚀")
                    
                    TypingTextView(fullText: "Hobbies")
                        .font(.headline)
                        .padding(.top,24)
                    
                    TypingTextView(fullText: "Swimming, hiking, playing guitar, and trying to learn new languages 🌊🏔️🎸🌍")
                    
                    

                        
                }
                .padding(.leading,18)
                .padding(.top,18)
                
                Spacer()
            }
            
            
            
            Spacer()
            
            Button {
                dismiss()
            } label: {
                Text("Return")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.accentColor)
                    .background(
                        RoundedRectangle(cornerRadius: 12, style: .circular)
                            .fill(
                                LinearGradient(
                                    colors: [.blue.opacity(0.5), .orange.opacity(0.2)],
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                            )
                    )
                    .padding(.horizontal)
                    
            }
            .padding(.bottom, 50)

            
            

        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
        .onAppear{
            animateIn = true
        }
    }
    

    
}

#Preview {
    ShowDetailsView()
}
