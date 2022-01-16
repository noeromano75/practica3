//
//  ViewControllerRecuperar.swift
//  practica1
//
//  Created by Noe Romano Vazquez on 10/01/22.
//  Copyright © 2022 noeromano. All rights reserved.
//

import UIKit

class ViewControllerRecuperar: UIViewController {

    @IBOutlet weak var usuario: UITextField!
    @IBOutlet weak var email: UITextField!
    var user :String = ""
    
    @IBAction func Recuperar(_ sender: Any) {
    
        callBack?(email.text!)
            self.dismiss(animated: true, completion: nil)
    }
    
    var callBack:((String)->Void)?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.usuario.text = user
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
