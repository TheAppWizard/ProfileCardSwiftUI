//
//  CustomShape.swift
//  ProfileCardSwiftUI
//
//  Created by Shreyas Vilaschandra Bhike on 27/04/21.
//


// Created by raghav.codes
import SwiftUI

struct CustomShape: Shape {
    var corner : UIRectCorner
    var radii : CGFloat

    func path(in rect : CGRect) -> Path{
        let path = UIBezierPath(
            roundedRect : rect,
            byRoundingCorners: corner,
            cornerRadii: CGSize(
            width: radii, height: radii))

        return Path(path.cgPath)
    }
}


