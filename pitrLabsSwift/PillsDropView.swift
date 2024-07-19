//
//  PillsDropView.swift
//  pitrLabsSwift
//
//  Created by Michkail Piter on 18/07/24.
//

import SwiftUI

struct PillsDropView: View {
    
    // MARK:- variables
    @Binding var isAnimating: Bool
    
    // MARK:- views
    var body: some View {
        ZStack {
            PillGroupView(isAnimating: $isAnimating,
                          initialOffSet: CGSize(width: 0, height: 0),
                          animationOffset: 0.05)
            PillGroupView(isAnimating: $isAnimating,
                          initialOffSet: CGSize(width: 10, height: -45),
                          animationOffset: 0.05)
            PillGroupView(isAnimating: $isAnimating,
                          initialOffSet: CGSize(width: -10, height: -99.5),
                          animationOffset: 0.025)
        }
    }
}

struct PillDropView_Previews: PreviewProvider {
    static var previews: some View {
        PillsDropView(isAnimating: .constant(false))
    }
}

