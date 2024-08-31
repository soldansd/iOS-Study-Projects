//
//  CustomProgressView.swift
//  ToDoList
//
//  Created by Даниил Соловьев on 29/07/2024.
//

import SwiftUI

struct CustomProgressView: View {
    
    @Binding var progress: CGFloat
    private var barColor: Color
    private var animationTime: TimeInterval = 0.3
    
    init(progress: Binding<CGFloat>, barColor: Color) {
        self._progress = progress
        self.barColor = barColor
    }
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .fill(barColor.opacity(0.3))
                
                Rectangle()
                    .fill(barColor)
                    .frame(width: min(geometry.size.width, geometry.size.width * progress))
                    .animation(.linear)
            }
            .clipShape(RoundedRectangle(cornerRadius: 20))
        }
    }
}

#Preview {
    CustomProgressView(progress: .constant(10), barColor: .toDoPrimary)
}
