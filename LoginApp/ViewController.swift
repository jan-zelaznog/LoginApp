//
//  ViewController.swift
//  LoginApp
//
//  Created by Ángel González on 18/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var txtUser: UITextField!
    @IBOutlet weak var txtPass: UITextField!
    
    @IBAction func btnContinueTouch(_ sender: Any) {
        guard let mail = txtUser.text,
              let pass = txtPass.text
        else {
            return
        }
        var mensaje = ""
        if mail == "" {
            mensaje = "falta el correo"
        }
        else if pass == "" {
            mensaje = "falta el password"
        }
        else {
            let expresionRegular = try! NSRegularExpression(pattern: "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\\.[a-zA-Z0-9-]+)*$")
            let coincidencias = expresionRegular.matches(in: mail, range: NSRange(location: 0, length: mail.count))
            if coincidencias.count != 1 {
                // no hizo match el string con el patron
                mensaje = "debe indicar un correo válido"
            }
        }
        
        if mensaje == "" {
            // go to home
            // obtenemos una referencia al Storyboard, si solo hay un paquete de la aplicación, el argumento se anula
            let sb = UIStoryboard(name: "Main", bundle: nil)
            // le indicamos al storyboard que cree el siguiente controller
            let homeViewController = sb.instantiateViewController(withIdentifier:"Home")
            // cambiamos el tipo de presentación para que utilice la pantalla completa
            homeViewController.modalPresentationStyle = .fullScreen
            // presentamos el nuevo viewController
            self.present(homeViewController, animated: true, completion: nil)
        }
        else {
            // presentar el mensaje al usuario
            let alert = UIAlertController(title: "error", message: mensaje, preferredStyle: .alert)
            let action = UIAlertAction(title: "Ok", style: .default)
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func btnSignUpTouch () {
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}

