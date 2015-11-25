//
//  InterfaceController.swift
//  SeleccionPizza WatchKit Extension
//
//  Created by Angel Amaya on 24/11/15.
//  Copyright © 2015 Angel. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    var TamañoActual: Float = 1
    var MasaActual: Float = 1
    var QuesoActual:Float = 1
    var IngredientesActual:Float = 1

    @IBOutlet var valorTamaño: WKInterfaceLabel!
    @IBOutlet var valorMasa: WKInterfaceLabel!
    @IBOutlet var valorQueso: WKInterfaceLabel!
    @IBOutlet var valorIngredientes: WKInterfaceLabel!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }
    
    @IBAction func cocina() {
        
        let resultadoCocina = Cocina(TamañoActual, M: MasaActual, Q: QuesoActual, I: IngredientesActual)
        let final = Cocina_Pizza (f: "Primer Pedido")
        pushControllerWithName("EnElHorno", context: final)
        
        print(resultadoCocina)
    }
    
    func Cocina (T: Float, M: Float, Q: Float, I: Float) ->Float {
        
        let Pedido = T + M + Q + I
        
        return Pedido

    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func nuevoValorTamaño(value: Float) {
        
        var Tamaño = ["Chica": 1, "Mediana": 2, "Grande": 3]
        TamañoActual = value
        
        valorTamaño.setText(String(TamañoActual))
    }
    @IBAction func nuevoValorMasa(value: Float) {
        
        var Masa = ["Crujiente": 1, "Delgada": 2, "Gruesa":3]
        MasaActual = value
        
        valorMasa.setText(String(MasaActual))
    }
    @IBAction func nuevoValorQueso(value: Float) {
        
        var Queso = ["Mozarela": 1, "Chedar": 2, "Parmesano": 3, "Sin Queso": 4]
        
        valorQueso.setText(String(QuesoActual))
    }
    @IBAction func nuevoValorIngredientes(value: Float) {
        
        var Ingredientes = ["Jamon": 1, "Pepperoni": 2, "Pavo": 3, "Salchicha": 4, "Aceituna": 5, "Cebolla": 6, "Pimiento": 7, "Piña": 8, "Anchoa": 9]
        
        valorIngredientes.setText(String(IngredientesActual))
    }
}
