//
//  HomeViewController.swift
//  TeaApp
//
//  Created by Lily Cornell on 3/14/21.
//

import UIKit

class TeaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBOutlet weak var TitleLabel: UILabel!
    
    @IBOutlet weak var brewSectionLabel: UILabel!
    @IBOutlet weak var brewLabel: UILabel!
    
    @IBOutlet weak var whatSectionLabel: UILabel!
    @IBOutlet weak var whatisitLabel: UILabel!
    
    @IBOutlet weak var howSectionLabel: UILabel!
    @IBOutlet weak var howisitmadeLabel: UILabel!
    
    @IBOutlet weak var factsSectionLabel: UILabel!
    @IBOutlet weak var funfactsLabel: UILabel!
    
    var tea: Tea?
    
    override func viewWillAppear(_ animated: Bool) {
        if let t = tea {
            TitleLabel.text = t.name
            brewLabel.text = t.brewing
            whatisitLabel.text = t.whatisit
            howisitmadeLabel.text = t.howitsmade
            funfactsLabel.text = t.funfacts
        }
    }
}
    
