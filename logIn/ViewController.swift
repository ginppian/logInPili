//
//  ViewController.swift
//  logIn
//
//  Created by ginppian on 03/11/16.
//  Copyright © 2016 ginppian. All rights reserved.
//

import UIKit

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
}

class ViewController: UIViewController {

    let nombre = "pilar"
    let pass   = "1234"
    
    @IBOutlet weak var textViewName: UITextField!
    @IBOutlet weak var textViewPass: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
    }

    
    @IBAction func aceptarAction(_ sender: UIButton) {
        if(textViewName.text! == nombre){
            performSegue(withIdentifier: "exitoSegue", sender: self)
        } else {
            let alert = UIAlertController(title: "Alert ⚠️", message: "Por favor ingrese un Usuario y Contraseña validos 😕", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)        }
    }
    
    @IBAction func cancelarAction(_ sender: UIButton) {
        textViewName.text = ""
        textViewPass.text = ""
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "exitoSegue"{
            
        }
    }

}

