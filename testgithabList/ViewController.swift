//
//  ViewController.swift
//  testgithabList
//
//  Created by Максим Никитюк on 28.01.2020.
//  Copyright © 2020 Максим Никитюк. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
   

var myTablevaiv = UITableView()
let indentifire = "myCeel"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
createTable()
    }

    func createTable() {

            self .myTablevaiv = UITableView(frame: view.bounds, style: .plain)
        myTablevaiv .register(UITableViewCell.self, forCellReuseIdentifier: indentifire)
            self .myTablevaiv.delegate = self
        self.myTablevaiv.dataSource = self
        
        myTablevaiv.autoresizingMask = [.flexibleWidth,.flexibleHeight]
        
        
        view.addSubview(myTablevaiv)
        
        }
//MARK: -UITableViewDataSource
    func numberOfSections(in tableView: UITableView) -> Int {
      return 3
    }
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    switch section {
    case 0:
        return 3
    case 1:
        return 5
    case 2:
        return 8
    default:
        break
    }
    return 0
       }
       
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

           
let cell = tableView.dequeueReusableCell(withIdentifier: indentifire, for: indexPath)
        
        cell.textLabel?.text = "section = \(indexPath.section) cell = \(indexPath.row)"
        
        switch indexPath.section {
        case 0:
            cell.backgroundColor = UIColor.red
        case 1:
            cell.backgroundColor = UIColor.blue
        case 2:
            cell.backgroundColor = UIColor.orange
        default:
            break
        }
        
        return cell
        
       }
    //MARK: -UITableVaiwDelegate
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
       
    }
    




