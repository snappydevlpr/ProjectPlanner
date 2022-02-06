//  Theme.swift
//  ProjectPlanner
//  Although you’re not creating a view in this section, you add Color properties from the SwiftUI framework. SwiftUI treats colors as View instances that you can add directly to a view hierarchy.
//  Created by Austin Suarez on 1/29/22.

import Foundation
import SwiftUI

//Add cases for each color listed in the Themes folder in the asset catalog.
enum Theme:String{
    case bubblegum
    case buttercup
    case indigo
    case lavender
    case magenta
    case navy
    case orange
    case oxblood
    case periwinkle
    case poppy
    case purple
    case seafoam
    case sky
    case tan
    case teal
    case yellow

    //This property initializes a color from the asset catalog.
    var mainColor: Color {
        Color(rawValue)
    }
    
    //The accent color provides a high-contrast complement to the theme’s main color, ensuring your views remain accessible.
    var accentColor: Color {
          switch self {
          case .bubblegum, .buttercup, .lavender, .orange, .periwinkle, .poppy, .seafoam, .sky, .tan, .teal, .yellow: return .black
          case .indigo, .magenta, .navy, .oxblood, .purple: return .white
          }
    }
    
    var name: String {
          rawValue.capitalized
    }
}
