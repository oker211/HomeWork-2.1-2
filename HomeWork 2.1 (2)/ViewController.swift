//
//  ViewController.swift
//  HomeWork 2.1 (2)
//
//  Created by Филипп Слабодецкий on 13.10.2020.
//

import UIKit

enum CorrentLight {
    case red
    case yellow
    case green
}

class ViewController: UIViewController {

    //MARK: IBOutlet
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var nextButton: UIButton!
    
    //MARK: Properties
    private var correntLight: CorrentLight = .red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        // Закругляем углы у вью и кнопки
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        greenView.layer.cornerRadius = greenView.frame.width / 2
        nextButton.layer.cornerRadius = nextButton.frame.height / 5
            
        // Устанавливаем цвет Альфа у вью
        redView.alpha = lightIsOff
        yellowView.alpha = lightIsOff
        greenView.alpha = lightIsOff
        
        // Устанавливаем текст кнопки
        nextButton.setTitle("Start", for: .normal)
        
    }

    //MARK: IBAction
    @IBAction func pressButton() {
        
        nextButton.setTitle("Next", for: .normal)
    
        switch correntLight {
       
        case .red:
            greenView.alpha = lightIsOff
            redView.alpha = lightIsOn
            correntLight = .yellow
        case .yellow:
            redView.alpha = lightIsOff
            yellowView.alpha = lightIsOn
            correntLight = .green
        case .green:
            yellowView.alpha = lightIsOff
            greenView.alpha = lightIsOn
            correntLight = .red
        }
}
    
    //MARK: Methods

}
