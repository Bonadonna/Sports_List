//
//  DetailViewController.swift
//  SportsList
//
//  Created by Luca Bonadonna on 05/12/2017.
//  Copyright © 2017 Luca Bonadonna. All rights reserved.
//

import UIKit

class DetailSportViewController: UIViewController {
    var sport : Sport!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = sport.name
        self.view.backgroundColor = UIColor.white
        let textA = "\(NSLocalizedString("match_duration_text", comment: ""))\(sport.match_duration!) min."
        let textB = "\(NSLocalizedString("time_duration_text", comment: ""))\(sport.time_duration!) min."
        let textC = "\(NSLocalizedString("number_of_times_text", comment: ""))\(sport.number_of_times!)"
        let finalText = "\(textA)\n\(textB)\n\(textC)"
        
        let detailLabel = UILabel(frame: CGRect(x: g.Size.height*2, y: g.Size.height*4, width: g.Size.width*96, height: g.Size.width*96))
        detailLabel.textAlignment = .center
        detailLabel.numberOfLines = 0
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 10
        let attrString = NSMutableAttributedString(string: finalText)
        attrString.addAttribute(NSAttributedStringKey.font, value: UIFont(name: "Helvetica", size: 15)!, range: NSMakeRange(0, attrString.length))
        attrString.addAttribute(NSAttributedStringKey.paragraphStyle, value:paragraphStyle, range:NSMakeRange(0, attrString.length))
        detailLabel.attributedText = attrString
        
        self.view.addSubview(detailLabel)
        
    }
    
}
