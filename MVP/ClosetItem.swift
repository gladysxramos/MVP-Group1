//
//  ClosetItem.swift
//  MVP
//
//  Created by Scholar on 7/31/24.
//

import Foundation
import SwiftData
import SwiftUI



@Model
class ClosetItem {
    var title: String
    //var picture: Image
//    var category: String
    
    init( title: String/*picture: Image,*/ /*category: String*/) {
        
        self.title = title
        //self.picture = picture
//        self.category = category
    }
}

