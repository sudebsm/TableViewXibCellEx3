//
//  ViewController.swift
//  SimpleTableView
//
//  Created by Sudeb Sarkar on 05/06/17.
//  Copyright © 2017 test ss. All rights reserved.
//

import UIKit




class ViewController : UIViewController ,UITableViewDataSource , UITableViewDelegate {
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let nibNameLeft = UINib(nibName:"Cell1", bundle:nil)
        tableview.register(nibNameLeft, forCellReuseIdentifier: "myCell")
        
        let nibNameRight = UINib(nibName:"Cell2", bundle:nil)
        tableview.register(nibNameRight, forCellReuseIdentifier: "myCell2")
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if (indexPath.item%2)==0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! TableViewCell
            
            cell.lblName?.text = "Sudeb"
            cell.lblDesc?.text = "Sudeb Sarkar"
            cell.userImage?.image = UIImage(named: "image1.jpg")
            return cell

        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "myCell2") as! TableViewCell2
            cell.lblName?.text = "Koushik"
            cell.lblDesc?.text = "Koushik Nandi"
            cell.userImage?.image = UIImage(named:"image2.jpg")
            return cell

        }
    }
    
    func tableView(_ tableView:UITableView, numberOfRowsInSection section:Int) -> Int
    {
        return 5
    }
    
}

