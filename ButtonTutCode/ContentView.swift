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
            Button {
                self.title = "Button #2 was pressed!"
            } label: {
                Text("Button #2")
            }
            Button(action: {
                self.title = "Button #3 was pressed!"
            }, label: {
                Text("Button #3")
                
            })

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
