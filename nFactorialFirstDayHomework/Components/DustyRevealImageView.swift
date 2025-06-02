//
//  DustyRevealImageView.swift
//  nFactorialFirstDayHomework
//
//  Created by Bizhan on 02.06.2025.
//

import SwiftUI

struct DustyRevealImageView: View {
    let image: Image
    let size: CGSize
    let cornerRadius: CGFloat

    @State private var reveal = false

    var body: some View {
        image
            .resizable()
            .scaledToFill()
            .frame(width: size.width, height: size.height)
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
            .mask(
                LinearGradient(
                    gradient: Gradient(stops: [
                        .init(color: .black, location: reveal ? 1 : 0),
                        .init(color: .clear, location: reveal ? 1.1 : 0.1)
                    ]),
                    startPoint: .leading,
                    endPoint: .trailing
                )
                .animation(.easeOut(duration: 2), value: reveal)
            )
            .onAppear {
                reveal = true
            }
    }
}


#Preview {
    DustyRevealImageView(image: Image("avatar"), size: CGSize(width: 300, height: 300), cornerRadius: 20)
}
