//
//  DatosRespuestaViewController.swift
//  IOS Model Example 1
//
//  Created by Jorge Luis Limo Arispe on 12/02/17.
//  Copyright © 2017 Jorge Luis Limo Arispe. All rights reserved.
//

import UIKit

class DatosRespuestaViewController: UIViewController {
    
    var resultadoSeleccionado:Array<Any> = []

    @IBOutlet weak var lblseleccionados: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //let arraySelected = Array(resultadoSeleccionado.arraySelected)
        
        //Lo que se recibe de el tableViewController es una array con la seccion y la fila
        //para saber eso solo necsitamos imprimir el arreglo en label y veremos en nos sale algo 
        //como [[1,3][1,3]]
        //Eso indica quiere decir que es un array dentro de otro
        //como nos esta retornando un array podemos recorrerlo con un FOR
        for selected in resultadoSeleccionado {
            //Ahora al imprimir la variable selected nos mostrara en la consola algo como [2,3]
            //eso quiere decir que ya tenemos el array que estaba dentro del otro
            //como no tenemos por ahora un metodo para parsear de String to Array
            //Usaremos un metodo para crear un array desde un limite, en este caso el caracter entre los numeros es la,
            //Separamos por comas la cadena
            var arraySectionAndRows = String(describing: selected).components(separatedBy: ",")
            //Esto nos devuelve un arreglo con dos posiciones, en el arraySectionAndRows[0] podria estar [2 y 
            //en la posicion arraySectionAndRows[1] podria estar algo como 1]
            //entonces ahora que tenemos los valores, tenemos que quitarles los corchetes
            var seccion = arraySectionAndRows[0]
            //Eliminar el corcheque de la seccion, usamos la misma logica que la de arriba, usamos como limitador el corchete
            //izquierdo, esto quiere decir que en la segunda posicion estara el numero
            var auxArrayeccion = String(describing: seccion).components(separatedBy: "[")
            //ahora guardamos el numero en una variable
            seccion = auxArrayeccion[1]
            //ahora usamos el mismo proceso para la fila, recordar que aqui esta como 1]
            var fila = arraySectionAndRows[1]
            //fila.substring(to: fila.index(before: fila.endIndex)) este metodo lo que haces es eliminar el ultimo
            //caracter de nuestra cadena y por suerte el corchete derecho es el que queremos eliminar y se encuentra al final
            fila =  fila.substring(to: fila.index(before: fila.endIndex))
            //ahora imprimimos las variable ara saber que si nos jala la informacion
            print("Seccion : " + seccion + " - Fila :  " + fila)
            //DEbe salir en al consola : Seccion: 1 - Fila : 0
            //ahora que sabemos las filas y secciones solo es cosa de hacer los if y swtch para el texto del label que
            //se muestra..
        }
        
        lblseleccionados.text = String(describing: resultadoSeleccionado)
        
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
