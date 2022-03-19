//
//  Extensions.swift
//  LoginApp
//
//  Created by Ángel González on 19/03/22.
//

import UIKit

// Las extensiones nos permiten agregar funciones o propiedades a las clases Base
extension UILabel {
    func customize() {
        self.font = UIFont(name: "Dancing Script", size: 34)
        self.textColor = .purple //UIColor(red: 1, green: 153/255, blue:204/255, alpha: 1)
    }
    
    // también nos permiten reemplazar metodos originales, por lo que hay que utilizarlas con mucho cuidado
    
}
