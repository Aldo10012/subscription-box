//
//  HistoryVC.swift
//  subscription-box
//
//  Created by Alberto Dominguez on 2/12/21.
//

import UIKit

class HistoryVC: UIViewController{
    let data = Data()
    
    let table: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        table.rowHeight = 100
        table.register(HistoryCell.self, forCellReuseIdentifier: "BoxCell")
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTable()
        
    }
    
    func setTable(){
        self.view.addSubview(table)
        title = "History"
        table.pin(to: view)
        table.register(HistoryCell.self, forCellReuseIdentifier: "HistoryCell")
        table.delegate = self
        table.dataSource = self
    }
    
}





extension HistoryVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.BoxList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HistoryCell", for: indexPath) as! HistoryCell
        //let box = data.BoxList[indexPath.row]
        //cell.boxImage.image = UIImage(systemName: "shippingbox")
        cell.textLabel?.text = " \(data.BoxList[indexPath.row].month) \(data.BoxList[indexPath.row].day), \(data.BoxList[indexPath.row].year)"
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let boxDetail = BoxItemVC()
        boxDetail.boxItemList = data.BoxList[indexPath.row].item
        self.navigationController?.pushViewController(boxDetail, animated: true)
    }
    
    
}

