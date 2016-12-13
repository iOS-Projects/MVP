//
//  ListTableViewController.swift
//  MVP
//
//  Created by Amreth on 12/13/16.
//  Copyright © 2016 Amreth. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {

    var evenHandler: ListPresenter?
    override func viewDidLoad() {
        super.viewDidLoad()
        //Attach View
        evenHandler = ListPresenter()
        evenHandler?.attachView(viewInterface: self) // go to ListPresenter.swift
        // Load Data
        evenHandler?.loadData(page: 1, limit: 50)
    }
   
    
    // UpdateViewWithData(data:[Article]) ([Article] is an array that we declare in Model)
  
}


extension ListTableViewController: ListViewInterface{
    
    func attachView() {
        print("ListTableViewController attach view")
    }
    
    func updateViewWithData(_ data: [Article]) {
        print("Data: \(data.count)")
    }
    
    func updateViewWithoutData() {
        print("No data ")
    }
    
}
