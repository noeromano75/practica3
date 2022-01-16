//
//  ViewControllerRegistrar.swift
//  practica1
//
//  Created by Noe Romano Vazquez on 10/01/22.
//  Copyright © 2022 noeromano. All rights reserved.
//

import UIKit

class ViewControllerRegistrar: UIViewController {

    @IBOutlet weak var nombre: UITextField!
    @IBOutlet weak var pass: UITextField!
    @IBOutlet weak var passConfirm: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var date: UITextField!
    @IBOutlet weak var noEmpl: UITextField!
    @IBOutlet weak var telefono: UITextField!
    
    @IBAction func doneRegistrar(_ sender: Any) {
        callBack?(email.text!,pass.text!)
        self.dismiss(animated: true, completion: nil)
    }
    
    var callBack:((String,String)->Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
