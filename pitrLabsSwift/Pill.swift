//
//  Pill.swift
//  pitrLabsSwift
//
//  Created by Michkail Piter on 18/07/24.
//

import SwiftUI

struct Pill: View {
    
    // MARK:- variables
    let width: CGFloat = 40
    let height: CGFloat = 40
    
    let initialOffset: CGSize
    let animationOffset: CGSize
    
    let animationDuration: TimeInterval = 0.075
    let animationDelay: TimeInterval
    
    @Binding var isAnimating: Bool
    
    // MARK:- views
    var body: some View {
        Circle()
            .foregroundColor(Color.pillColor)
            .frame(width: width, height: height)
            .offset(self.isAnimating ? animationOffset : initialOffset)
            .animation(Animation.spring()
                .speed(1.35)
                .delay(self.animationDelay))
        }
    }
    
    struct Circle_Previews: PreviewProvider {
        static var previews: some View {
            Pill(initialOffset: CGSize(width: 0, height: 0), animationOffset: CGSize(width: 40, height: 40), animationDelay: 0.1, isAnimating: .constant(true))
        }
}
