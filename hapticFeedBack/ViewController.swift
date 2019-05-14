//
//  ViewController.swift
//  hapticFeedBack
//
//  Created by carloshenrique.carmo on 10/05/19.
//  Copyright © 2019 carloshpdoc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var tapticButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for button in tapticButtons {
            button.layer.cornerRadius = button.frame.size.height/2
        }
    }
    
    @IBAction func errorButtonTapped(_ sender: UIButton) {
        let generator = UINotificationFeedbackGenerator()
        generator.prepare()
        generator.notificationOccurred(.error)
    }
    
    @IBAction func successButtonTapped(_ sender: UIButton) {
        let generator = UINotificationFeedbackGenerator()
        generator.prepare()
        generator.notificationOccurred(.success)
    }
    
    @IBAction func warningButtonTapped(_ sender: UIButton) {
        let generator = UINotificationFeedbackGenerator()
        generator.prepare()
        generator.notificationOccurred(.warning)
    }
    
    @IBAction func lightButtonTapped(_ sender: UIButton) {
        let generator = UIImpactFeedbackGenerator(style: .light)
        generator.prepare()
        generator.impactOccurred()
    }
    
    @IBAction func mediumButtonTapped(_ sender: UIButton) {
        let generator = UIImpactFeedbackGenerator(style: .medium)
        generator.prepare()
        generator.impactOccurred()
    }
    
    @IBAction func heavyButtonTapped(_ sender: UIButton) {
        let generator = UIImpactFeedbackGenerator(style: .heavy)
        generator.prepare()
        generator.impactOccurred()
    }
    
    @IBAction func selectionButtonTapped(_ sender: UIButton) {
        let generator = UISelectionFeedbackGenerator()
        generator.selectionChanged()
    }
    
}
