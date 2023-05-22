//
//  ViewController.swift
//  TablesLesson
//
//  Created by DA MAC M1 117 on 2023/05/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var Cars = ["Mini", "Mercedes-Benz", "BMW", "Jeep", "Porche"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDataSource {
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Cars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = Cars [indexPath.row]
        return cell
    }
    
    
}
