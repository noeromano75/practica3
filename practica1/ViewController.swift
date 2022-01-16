//
//  ViewController.swift
//  practica1
//
//  Created by Noe Romano Vazquez on 10/01/22.
//  Copyright © 2022 noeromano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var user: UITextField!
    @IBOutlet weak var pass: UITextField!
    var userGlobal:String = "noe"
    var passGlobal:String = "1234"
    
    @IBAction func ingresar(_ sender: Any) {
        
        
        if user.text != userGlobal && pass.text != passGlobal {
            print("Error credenciales incorrectas")
        }
        if user.text == userGlobal && pass.text == passGlobal{
            if let vcd = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CVPrincipal") as? ViewControllerPrincipal {
                self.present(vcd, animated: true)
                print("Principal")
            }
        }

        
    }
    @IBAction func registrar(_ sender: Any) {
        if let vcd = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CVRegistrar") as? ViewControllerRegistrar {
            self.present(vcd, animated: true)
            print("Registrar")
        }
    }
    @IBAction func recuperar(_ sender: Any) {
        
        
        if let vcd = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CVRecuperar") as? ViewControllerRecuperar {
            vcd.user = userGlobal
            self.present(vcd, animated: true)
            print("Recuperar")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vcd = segue.destination as? ViewControllerRegistrar{
            vcd.callBack = {
                (userRegistrado,passRegistrado)in
                self.userGlobal = userRegistrado
                self.passGlobal = passRegistrado
            }
        }
        
        if let vcd = segue.destination as? ViewControllerRecuperar{
            vcd.callBack = {
                (passRegistrado)in
                self.passGlobal = passRegistrado
            }
        }
        
    }


}

