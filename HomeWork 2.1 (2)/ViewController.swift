//
//  ViewController.swift
//  HomeWork 2.1 (2)
//
//  Created by Филипп Слабодецкий on 13.10.2020.
//

import UIKit

class ViewController: UIViewController {

    //MARK: IBOutlet
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var nextButton: UIButton!
    
    //MARK: Properties
    let defaultAlphaColor: CGFloat = 0.5
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        // Закругляем углы у вью и кнопки
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        greenView.layer.cornerRadius = greenView.frame.width / 2
        nextButton.layer.cornerRadius = nextButton.frame.height / 5
            
        // Устанавливаем цвет Альфа у вью
        redView.alpha = defaultAlphaColor
        yellowView.alpha = defaultAlphaColor
        greenView.alpha = defaultAlphaColor
    }

    //MARK: IBAction
    @IBAction func pressButton() {
    
         if greenView.alpha == defaultAlphaColor && yellowView.alpha == defaultAlphaColor && redView.alpha == defaultAlphaColor {
             redView.alpha = 1.0
         } else if greenView.alpha == defaultAlphaColor && yellowView.alpha == defaultAlphaColor && redView.alpha == 1.0 {
             redView.alpha = defaultAlphaColor
             yellowView.alpha = 1.0
         } else if greenView.alpha == defaultAlphaColor && yellowView.alpha == 1.0 && redView.alpha == defaultAlphaColor {
             yellowView.alpha = defaultAlphaColor
             greenView.alpha = 1.0
         } else if greenView.alpha == 1 && yellowView.alpha == defaultAlphaColor && redView.alpha == defaultAlphaColor {
             greenView.alpha = defaultAlphaColor
             redView.alpha = 1.0
         }
     }

    
    //MARK: Methods

}
