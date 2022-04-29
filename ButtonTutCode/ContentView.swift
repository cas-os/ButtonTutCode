//
//  ContentView.swift
//  ButtonTutCode
//
//  Created by HAL-9001 on 29/04/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var title: String = "Bonsoir Elliot"
    
    var body: some View {
        VStack(spacing: 30) {
            Text(title)
            Button("Button #1") {
                self.title = "Button #1 was pressed!"
            }
            .accentColor(.red)
            Button {
                self.title = "Button #2 was pressed!"
            } label: {
                Text("Button #2")
            }
            .accentColor(.orange)
            Button(action: {
                self.title = "Button #3 was pressed!"
            }, label: {
                Text("Button #3".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
                
            }
            )

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
