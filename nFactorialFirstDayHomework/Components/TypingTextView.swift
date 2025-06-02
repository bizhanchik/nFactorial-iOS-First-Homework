//
//  TypingTextView.swift
//  nFactorialFirstDayHomework
//
//  Created by Bizhan on 02.06.2025.
//

import SwiftUI

struct TypingTextView: View {
    let fullText: String
    @State private var displayedText = ""
    
    var body: some View {
        Text(displayedText)
            .onAppear {
                showTextWithTypingEffect()
            }
    }

    private func showTextWithTypingEffect() {
        displayedText = ""
        var currentIndex = 0
        let characters = Array(fullText)
        
        Timer.scheduledTimer(withTimeInterval: 0.03, repeats: true) { timer in
            if currentIndex < characters.count {
                displayedText.append(characters[currentIndex])
                currentIndex += 1
            } else {
                timer.invalidate()
            }
        }
    }
}



#Preview {
    TypingTextView(fullText: "sdfasdfsdfgsfgsdfg")
}
