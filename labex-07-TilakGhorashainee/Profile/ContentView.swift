//
//  ContentView.swift
//  Profile
//
//  Created by Paul Inventado on 4/14/22.
//
import SwiftUI
struct ContentView: View {
    var body: some View {
        VStack {
            // Analyze code for Model 1
            HStack {
                Rectangle()
                    .fill(.red)
                    .frame(width: 100, height: 100)
                Circle() // create a loge
                    .stroke(lineWidth: 5)
                    .foregroundColor(.orange) // sets the color of the outline of the shape
                    .frame(width: 100, height: 100) // set a frame
                Circle()
                    .fill(.blue)
                    .overlay(Circle() //
                        .stroke(lineWidth: 5)
                        .foregroundColor(.orange))
                    .frame(width: 100, height: 100)
            }.padding()
            // Analyze code for Model 2
            HStack {
                // TODO: Model 1 - Create a shape using any of the shapes and modifiers you learned.

                Diamond()
                    .fill(.yellow) // changed a diamond color
                    .frame(width: 100, height: 100) // set the frame size
                Ellipse()
                    .fill(.black)
                    .overlay(Rectangle()
                        .stroke(lineWidth: 5)
                        .foregroundColor(.orange))
                    .frame(width: 100, height: 100)

                // TODO: Model 2 - Create your custom shape
            }.padding()
            Spacer()
            HStack {
                Image("Everest")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
                    // TODO: Model 3 - Add image modifiers
                    .overlay(
                        Circle()
                            .stroke(lineWidth: 2)
                            .foregroundColor(.black))
                // TODO: Model 3 - Add your own image and use any of the modifiers you learned.
                Image("Everest")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                    .clipShape(Circle())
                    .overlay(Circle()
                        .stroke(lineWidth: 2)
                        .foregroundColor(.black))
                    .shadow(radius: 2)
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
