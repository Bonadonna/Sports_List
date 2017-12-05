//
//  MainViewController.swift
//  SportsList
//
//  Created by Luca Bonadonna on 05/12/2017.
//  Copyright © 2017 Luca Bonadonna. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    var containerListSport : UIView!
    
    override func viewDidLoad() {
        self.title = NSLocalizedString("title_list", comment: "")
        self.view.backgroundColor = UIColor.brown
        
        self.containerListSport = UIView(frame: CGRect(x: 0, y: g.Size.height*0, width: g.Size.width*100, height: g.Size.height*90))
        let listOfSport = ListViewController(nibName: nil, bundle: nil)
        self.addChildViewController(listOfSport)
        self.containerListSport.addSubview(listOfSport.tableView)
        listOfSport.tableView.frame = self.containerListSport.frame
        listOfSport.didMove(toParentViewController: self)
        listOfSport.reloadInputViews()
        self.view.addSubview(self.containerListSport)
        
    }
    
}
