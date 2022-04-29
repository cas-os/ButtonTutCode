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
                self.title = "Added to favourites!"
            } label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75, alignment: .center)
                    .shadow(radius: 10)
                    .overlay {
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color(hue: 1.0, saturation: 0.715, brightness: 0.562))
                    }
            }
            .accentColor(.orange)
            
            Button(action: {
                self.title = "SAVED!"
            }, label: {
                Text("Save".uppercased())
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
            
            Button(action: {
                self.title = "All finished!"
            }, label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2.0)
                    )
            })

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
