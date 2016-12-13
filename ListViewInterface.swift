//
//  ListViewInterface.swift
//  MVP
//
//  Created by Amreth on 12/13/16.
//  Copyright © 2016 Amreth. All rights reserved.
//

import Foundation


protocol ListViewInterface {
    func attachView()
    func updateViewWithData(_ data:[Article])
    func updateViewWithoutData()

}
    
    
    
