 //
//  ListPresenter.swift
//  MVP
//
//  Created by Amreth on 12/13/16.
//  Copyright © 2016 Amreth. All rights reserved.
//

import Foundation
 
 class ListPresenter{
    
    var listViewInterface:ListViewInterface?
    var listModel: ListModel?
    
    func attachView(viewInterface:ListViewInterface) {
        print("List Presenter attach View")
        // Set Delegate
        self.listViewInterface = viewInterface
        listModel = ListModel() // go to list model
        
        listModel?.listPresenterInterface = self
        
        // Notify to the caller 
        listViewInterface?.attachView() // will go to ListViewInterface
    }
    
    func loadData(page:Int, limit:Int){
        listModel?.loadData(page: page, limit: limit) //Load Data will go to ListModel
    }
    
 }
 
 extension ListPresenter: ListPresenterInterface{
    func responseData(data: [Article]) {
        if data.count>0{
            listViewInterface?.updateViewWithData(data)
        }else{
            listViewInterface?.updateViewWithoutData()
        }
    }
 }
