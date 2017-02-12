//
//  ViewController.swift
//  IOS Model Example 1
//
//  Created by Jorge Luis Limo Arispe on 12/02/17.
//  Copyright © 2017 Jorge Luis Limo Arispe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var swtmodulo1: UISwitch!
    
    @IBOutlet weak var swtmodulo2: UISwitch!
    
    @IBOutlet weak var swtmodulo3: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        var calcular = 0
        
        if swtmodulo1.isOn {
            calcular = calcular + 1
        }
        if swtmodulo2.isOn {
            calcular = calcular + 1
        }
        if swtmodulo3.isOn {
            calcular = calcular + 1
        }
        
        let avance = segue.destination as! ResultadoViewController
        
        avance.resultado = calcular
        
    }
    
    

}

