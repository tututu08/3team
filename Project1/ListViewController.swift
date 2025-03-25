//
//  ListViewController.swift
//  Project1
//
//  Created by 김은서 on 3/7/25.
//

import UIKit

class ListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {

    
    @IBOutlet weak var tableView: UITableView!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            tableView.register(UITableViewCell.self, forCellReuseIdentifier: "MemoCell")
            
            tableView.dataSource = self
            tableView.delegate = self
        }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return memoList.count
        }

        // 셀 설정 (타이틀만 표시)
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MemoCell", for: indexPath)
            
            let memo = memoList[indexPath.row]
            
            cell.textLabel?.text = memo.title
            
            return cell
        }
        
    }

