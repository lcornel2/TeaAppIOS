//
//  ViewController.swift
//  TeaApp
//
//  Created by Lily Cornell on 3/14/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func startQuiz() {
        //do something
        let vc = storyboard?.instantiateViewController(identifier: "quiz") as! TeaQuizViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
}

