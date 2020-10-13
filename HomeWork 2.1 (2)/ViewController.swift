//
//  ViewController.swift
//  HomeWork 2.1 (2)
//
//  Created by Филипп Слабодецкий on 13.10.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var nextButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Закругляем углы у вью и кнопки
        redView.layer.cornerRadius = 50
        yellowView.layer.cornerRadius = 50
        greenView.layer.cornerRadius = 50
        nextButton.layer.cornerRadius = 10
        
        // Устанавливаем цвет Альфа у вью
        redView.alpha = 0.5
        yellowView.alpha = 0.5
        greenView.alpha = 0.5
        
    }

    @IBAction func pressButton() {
        if greenView.alpha == 0.5 && yellowView.alpha == 0.5 && redView.alpha == 0.5 {
            redView.alpha = 1.0
        } else if greenView.alpha == 0.5 && yellowView.alpha == 0.5 && redView.alpha == 1.0 {
            redView.alpha = 0.5
            yellowView.alpha = 1.0
        } else if greenView.alpha == 0.5 && yellowView.alpha == 1.0 && redView.alpha == 0.5 {
            yellowView.alpha = 0.5
            greenView.alpha = 1.0
        } else if greenView.alpha == 1 && yellowView.alpha == 0.5 && redView.alpha == 0.5 {
            greenView.alpha = 0.5
            redView.alpha = 1.0
        }
    
}

}
