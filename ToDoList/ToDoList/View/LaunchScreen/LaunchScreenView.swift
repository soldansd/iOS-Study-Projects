//
//  LaunchScreenView.swift
//  ToDoList
//
//  Created by Даниил Соловьев on 29/07/2024.
//

import SwiftUI

struct LaunchScreenView: View {
    @Binding var isPresented: Bool
    @State var progress: CGFloat = 0.0
    @State private var scale = CGSize(width: 0.8, height: 0.8)
    var body: some View {
        
        ZStack {
            BackgroundView()
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 100, height: 100)
                .foregroundStyle(Color.toDoPrimary.opacity(0.25))
            
            Image(systemName: "checkmark")
                .font(.largeTitle)
                .bold()
                .foregroundStyle(Color.toDoPrimary)
            
            VStack {
                Spacer()
                
                CustomProgressView(progress: $progress, barColor: Color.toDoPrimary)
                    .frame(height: 8)
                    .onReceive([self.progress].publisher) { _ in
                        if self.progress >= 1.0 {
                            self.isPresented = false
                        }
                    }
                    .padding(.bottom, 30)
                    .padding(.horizontal, 40)
            }
        }
        .onAppear {
            self.startTimer()
        }
    }
    
    func startTimer() {
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { time in
            self.progress += 0.05
        }
    }
}


#Preview {
    LaunchScreenView(isPresented: .constant(true))
}
