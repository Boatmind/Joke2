//
//  ViewController.swift
//  RandonJoke
//
//  Created by Pawee Kittiwathanakul on 9/8/2562 BE.
//  Copyright © 2562 Pawee Kittiwathanakul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var jokeLabel: UILabel!
    @IBOutlet weak var bitton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonclikc(_ sender: Any) {
        APIManager().getRandomJoke { [weak self] (joke) in
            DispatchQueue.main.sync {
                guard let joke = joke else {
                    return
                }
                self?.jokeLabel.text = joke.value
            }
        }
    }
    


}

