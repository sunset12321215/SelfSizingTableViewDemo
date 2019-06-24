//
//  ViewController.swift
//  AdjustableTableView
//
//  Created by Dushyant Bansal on 24/02/18.
//  Copyright © 2018 db42.in. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  var count: Int = 1
  
  @IBOutlet weak var tableView: SelfSizedTableView!
  
  @IBAction func addRow(_ sender: UIBarButtonItem) {
    count = count + 1
    tableView.reloadData()
    tableView.scrollToRow(at: IndexPath(row:count - 1, section:0), at: .bottom, animated: true)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.maxHeight = 500
  }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = UITableViewCell()
    cell.textLabel?.text = "New cell \(indexPath.row+1)"
    return cell
  }
}

