//
//  SecondViewController.swift
//  LoginApp
//
//  Created by Ángel González on 19/03/22.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var label1 : UILabel!
    func setGradientBackground() {
        let colorTop =  UIColor(red: 255.0/255.0, green: 249.0/255.0, blue: 0.0/255.0, alpha: 1.0).cgColor
        let colorBottom = UIColor(red: 255.0/255.0, green: 94.0/255.0, blue: 58.0/255.0, alpha: 1.0).cgColor
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.view.bounds
        self.view.layer.insertSublayer(gradientLayer, at:0)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setGradientBackground()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        label1.customize()
        label1.text = "boo"
        // Fuentes preinstaladas, se pueden usar asi:
        // UIFont(name: "Marker Felt", size: 34)
        // La fuente predeterminada del sistema se asigna con el método de clase
        // UIFont.systemFont(ofSize: 34)
        // RGB 0-100% rojo, 0-100% verde, 0-100% azul
        // #FF99cc
    }
    

}
