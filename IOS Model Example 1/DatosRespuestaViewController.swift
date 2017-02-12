//
//  DatosRespuestaViewController.swift
//  IOS Model Example 1
//
//  Created by Jorge Luis Limo Arispe on 12/02/17.
//  Copyright © 2017 Jorge Luis Limo Arispe. All rights reserved.
//

import UIKit

class DatosRespuestaViewController: UIViewController {
    
    var resultadoSeleccionado = ""

    @IBOutlet weak var lblseleccionados: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblseleccionados.text = String(resultadoSeleccionado)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnRegresarTable(_ sender: UIButton) {
        self.dismiss(animated: true) {}
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
