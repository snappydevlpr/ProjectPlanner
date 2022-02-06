//
//  TrailingIconLabelStyle.swift
//  example of creating a custom icon
//  ProjectPlanner
//
//  Created by Austin Suarez on 1/29/22.
//

import Foundation
import SwiftUI

//Create a new structure named TrailingIconLabelStyle that conforms to LabelStyle.
struct TrailingIconLabelStyle: LabelStyle{
    //Create an empty makeBody(configuration:) function.
    func makeBody(configuration: Configuration) -> some View {
        HStack{
            configuration.title
            configuration.icon
        }
    }
}

//Add an extension on LabelStyle that creates a static property named trailingIcon.
//Because you defined the label style as a static property, you can call it using leading-dot syntax, which makes your code more readable.
extension LabelStyle where Self == TrailingIconLabelStyle{
    static var trailingIcon: Self{Self()}
}
