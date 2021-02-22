//
//  HistoryBoxDetail.swift
//  subscription-box
//
//  Created by Alberto Dominguez on 2/15/21.
//

import UIKit

class BoxItemVC: UIViewController {
    
    var boxItemList : [BoxItem] = []

    
    let tableView: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        table.rowHeight = 100
        return table
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTableView()
    }
    
    func setTableView(){
        view.addSubview(tableView)
        title = "Item List"
        setTableViewDelegates()                                                         // set delegate
        tableView.rowHeight = 100                                                       // set row height
        tableView.register(BoxItemCell.self, forCellReuseIdentifier: "BoxItemCell")     // register cells
        tableView.pin(to: view)                                                         // set constraints
    }
    
    func setTableViewDelegates(){
        tableView.delegate = self
        tableView.dataSource = self
    }

}


extension BoxItemVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return boxItemList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BoxItemCell") as! BoxItemCell
        let boxItem = boxItemList[indexPath.row]
        cell.set(item: boxItem)
        return cell
    }
    
    
}
