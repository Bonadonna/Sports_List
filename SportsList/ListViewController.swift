//
//  ViewController.swift
//  SportsList
//
//  Created by Luca Bonadonna on 05/12/2017.
//  Copyright © 2017 Luca Bonadonna. All rights reserved.
//

import UIKit

class ListViewController: UITableViewController {

    var sports : [Sport] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = 60
        // Do any additional setup after loading the view, typically from a nib.
        let alert = UIAlertController(title: nil, message: "Loading...", preferredStyle: .alert)
        alert.view.tintColor = UIColor.black
        let loadingIndicator: UIActivityIndicatorView = UIActivityIndicatorView(frame: CGRect(x: 10, y: 5, width: 50, height: 50)) as UIActivityIndicatorView
        loadingIndicator.hidesWhenStopped = true
        loadingIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.gray
        loadingIndicator.startAnimating();
        
        alert.view.addSubview(loadingIndicator)
        present(alert, animated: true, completion: nil)
        ApiDelegate.delegate.getAllSportWith(completion: { result in
            self.sports = result
            self.tableView.reloadData()
            self.reloadInputViews()
            loadingIndicator.stopAnimating()
            alert.dismiss(animated: true, completion: nil)
        }) { (error) in
            let alert = UIAlertController(title:NSLocalizedString("error_title", comment: ""), message: "\(error.localizedDescription)", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("error_cancel_text", comment: ""), style: UIAlertActionStyle.cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.sports.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "SportCellId")
        cell.textLabel?.text = sports[indexPath.row].name
        return cell;
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailView = DetailSportViewController()
        detailView.sport = self.sports[indexPath.row]
       self.navigationController?.pushViewController(detailView, animated: true)
        
    }
    
    
}

