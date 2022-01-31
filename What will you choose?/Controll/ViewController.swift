//
//  ViewController.swift
//  What will you choose?
//
//  Created by Inna Kokorina on 31.01.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    

    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.getAnswer(userAnswer: sender.currentTitle!)
        updateUI()
        
    }
    

    func updateUI(){
        storyLabel.text = storyBrain.getTitle()
        choice1Button.setTitle(storyBrain.setButtonTitle(n: 0), for: .normal)
        choice2Button.setTitle(storyBrain.setButtonTitle(n: 1), for: .normal)
    }
    
}

