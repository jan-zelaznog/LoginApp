//
//  HomeViewController.swift
//  LoginApp
//
//  Created by Ángel González on 19/03/22.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var imagen:UIImageView!
    
    @IBAction func sliderCambia (_ sender:UISlider) {
        print ("nuevo valor \(sender.value)")
        // Todos los objetos que descienden de UIView tienen la propiedad alpha que determina su transparencia
        imagen.alpha = CGFloat(sender.value)
    }

    @IBAction func switchCambia(_ sender: UISwitch) {
        if sender.isOn {
            self.view.backgroundColor = .white
        }
        else {
            self.view.backgroundColor = .black
        }
    }
    
    @IBAction func colorCambia(_ sender: UISegmentedControl) {
        let index = sender.selectedSegmentIndex
        if let color = sender.titleForSegment(at: index) {
            switch color {
                case "rojo":self.view.backgroundColor = .red
                case "azul":self.view.backgroundColor = .blue
                case "verde":self.view.backgroundColor = .green
                default:self.view.backgroundColor = .yellow
            }
        }
    }
    
    @IBOutlet weak var opciones:UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // para que no aparezca una opción seleccionada por default
        opciones.isEnabled = false
        opciones.selectedSegmentIndex = UISegmentedControl.noSegment
    }
}
