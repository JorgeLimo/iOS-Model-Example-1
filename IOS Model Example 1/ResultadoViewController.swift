//
//  ResultadoViewController.swift
//  IOS Model Example 1
//
//  Created by Jorge Luis Limo Arispe on 12/02/17.
//  Copyright © 2017 Jorge Luis Limo Arispe. All rights reserved.
//

import UIKit

class ResultadoViewController: UIViewController {
    
    
    var resultado:Int!
    
    @IBOutlet weak var imgResultado: UIImageView!
    
    @IBOutlet weak var lblMensaje: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch resultado {
        case 1:
            imgResultado.image = UIImage(named: "like")
            lblMensaje.text = "Resultado es 33.3 %"
        case 2:
            imgResultado.image = UIImage(named: "like")
            lblMensaje.text = "Resultado es 66.6 %"
        case 3:
            imgResultado.image = UIImage(named: "like")
            lblMensaje.text = "Resultado es 100 %"
        default:
            imgResultado.image = UIImage(named: "dislike")
            lblMensaje.text = "Resultado es 0 %"
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
