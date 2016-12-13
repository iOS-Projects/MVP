//
//  ListModel.swift
//  MVP
//
//  Created by Lun Sovathana on 12/13/16.
//  Copyright © 2016 Amreth. All rights reserved.
//

import Foundation
class ListModel{
    var listPresenterInterface:ListPresenterInterface?
    
    func loadData(page: Int, limit: Int){
        var arr = [Article]()
        
        for i in 0 ..< limit {
            arr.append(Article(id: i, title: "Hello \(i)", author: nil))
        }
    }
}
