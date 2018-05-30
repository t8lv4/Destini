//
//  ViewController.swift
//  Destini
//
//  Created by Philipp Muellauer on 01/09/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Our strings
    let text = StoryTexts()
    var storyIndex: Int = 1

    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var storyTextView: UILabel!
    @IBOutlet weak var restartButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startFromFresh()
        restartButton.isHidden = true

    }

    
    //MARK: press buttons to move on
    @IBAction func buttonPressed(_ sender: UIButton) {
    
        switch storyIndex {
        case 1:
            goFromStory1(sender: sender)
        case 2:
            goFromStory2(sender: sender)
        case 3:
            goFromStory3(sender:sender)
        default:
            break
        }
    }
    
    private func goFromStory1(sender: UIButton) {
        if sender.tag == 1 {
            storyTextView.text = text.story3
            storyIndex = 3
            
            sender.setTitle(text.answer3a, for: .normal)
            bottomButton.setTitle(text.answer3b, for: .normal)
        }
        
        if sender.tag == 2 {
            storyTextView.text = text.story2
            storyIndex = 2
            
            sender.setTitle(text.answer2b, for: .normal)
            topButton.setTitle(text.answer2a, for: .normal)
        }
    }
    
    private func goFromStory2(sender: UIButton) {
        if sender.tag == 1 {
            storyTextView.text = text.story3
            storyIndex = 3
            
            sender.setTitle(text.answer3a, for: .normal)
            bottomButton.setTitle(text.answer3b, for: .normal)
        }
        
        if sender.tag == 2 {
            storyTextView.text = text.story4
            storyIndex = 4
            restartButton.isHidden = false
            
            sender.isHidden = true
            topButton.isHidden = true
        }
    }
    
    private func goFromStory3(sender: UIButton) {
        if sender.tag == 1 {
            storyTextView.text = text.story6
            storyIndex = 6
            restartButton.isHidden = false
            
            sender.isHidden = true
            bottomButton.isHidden = true
        }
        
        if sender.tag == 2 {
            storyTextView.text = text.story5
            storyIndex = 5
            restartButton.isHidden = false
            
            sender.isHidden = true
            topButton.isHidden = true
        }
    }
    
    
    //MARK: restart the game
    @IBAction func restartButtonPressed(_ sender: UIButton) {
        startFromFresh()
    }
    
    private func startFromFresh() {
        storyIndex = 1
        
        storyTextView.text = text.story1
        topButton.setTitle(text.answer1a, for: .normal)
        bottomButton.setTitle(text.answer1b, for: .normal)
        
        topButton.isHidden = false
        bottomButton.isHidden = false
        restartButton.isHidden = true
    }
    
}

