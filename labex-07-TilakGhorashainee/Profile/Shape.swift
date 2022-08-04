//
//  Shaoe.swift
//  Profile
//
//  Created by Paul Inventado on 4/14/22.
//

import Foundation
import SwiftUI

struct Diamond: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        path.move(to: CGPoint(x: rect.maxX / 2, y: 0))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY / 2))
        path.addLine(to: CGPoint(x: rect.maxX / 2, y: rect.maxY))
        path.addLine(to: CGPoint(x: 0, y: rect.maxY / 2))
        path.addLine(to: CGPoint(x: rect.maxX / 2, y: 0))
        return path
    }
}

// TODO: Model 2 - Create  your own custom shape
struct Ellipse: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        path.move(to: CGPoint(x: rect.maxX / 4, y: 0)) // move the path string point, which is forthway across the X axis and the top of the shape.
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY / 2)) // moves the path max x length and halfway down the shape
        path.addLine(to: CGPoint(x: rect.maxX / 3, y: rect.maxY)) // moves the path thirdways accross the x axis
        path.addLine(to: CGPoint(x: 0, y: rect.maxY / 2)) // Move the path to the left-most spot and half way down the shape and left middle
        path.addLine(to: CGPoint(x: rect.maxX / 2, y: 0)) // Moves the path back to the sring of the middle top of the shap
        return path
    }
}
