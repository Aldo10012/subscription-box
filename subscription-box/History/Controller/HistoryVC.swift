//
//  HistoryVC.swift
//  subscription-box
//
//  Created by Alberto Dominguez on 2/12/21.
//

import UIKit

class HistoryVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let BoxList : [Box] = [
        Box(month: "February",
            year: 2021,
            item: BoxItem(name: "gloves", description: "rubber glove")),
        Box(month: "February",
            year: 2021,
            item: BoxItem(name: "masks", description: "cotton mask")),
        Box(month: "January",
            year: 2021,
            item: BoxItem(name: "gloves", description: "rubber glove")),
        Box(month: "January",
            year: 2021,
            item: BoxItem(name: "gloves", description: "rubber glove")),
        Box(month: "January",
            year: 2021,
            item: BoxItem(name: "masks", description: "cotton mask")),
        Box(month: "December",
            year: 2020,
            item: BoxItem(name: "gloves", description: "rubber glove"))
    ]
    
    
    //let alienArray = [String](repeating: "Item ", count: 20)
    
    let table: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        table.rowHeight = 100
        table.register(HistoryCell.self, forCellReuseIdentifier: "BoxCell")
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        view.backgroundColor = .yellow
        setTable()
        
    }
    
    func setTable(){
        self.view.addSubview(table)
        table.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor).isActive = true
        table.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor).isActive = true
        table.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor).isActive = true
        table.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor).isActive = true
        table.register(HistoryCell.self, forCellReuseIdentifier: "HistoryCell")
        table.delegate = self
        table.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return BoxList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HistoryCell", for: indexPath)
        cell.textLabel?.text = " \(BoxList[indexPath.row].month), \(BoxList[indexPath.row].year)"
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let boxDetail = HistoryBoxDetail()
        self.navigationController?.pushViewController(boxDetail, animated: true)
    }
    


}
