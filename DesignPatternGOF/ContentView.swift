//
//  ContentView.swift
//  DesignPatternGOF
//
//  Created by Anjan on 12/17/19.
//  Copyright © 2019 Anjan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let doAction : () -> Void
    var body: some View {
        VStack() {
            Text("Welcome To")
                .foregroundColor(.green)
                .font(.system(size: 20))
                .bold()
            Text("Design Pattern Learning")
                .foregroundColor(.blue)
                .font(.system(size: 24))
                .bold()
                .multilineTextAlignment(.center)
            Text("\"GOF\"")
                .foregroundColor(.red)
                .font(.system(size: 20))
                .bold()
            
            Spacer()
            
            Button(action: self.doAction) {
                Text("Do Something!!")
                    .foregroundColor(.blue)
                    .font(.title)
            }
            .modifier(MyButtonStyle())
            
            Spacer()
        }
    }
}

struct MyButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Color.yellow)
            .cornerRadius(50)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(doAction: {
            AppLogger.logInfo(message: "I am clicked")
        })
    }
}
