//
//  ValorDetalle.swift
//  SeleccionPizza
//
//  Created by Angel Amaya on 24/11/15.
//  Copyright © 2015 Angel. All rights reserved.
//

import WatchKit
import Foundation


class ValorDetalle: WKInterfaceController {

    @IBOutlet var PedidoCocina: WKInterfaceLabel!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let c=context as! Cocina_Pizza
        PedidoCocina.setText(String(c.pedidoFinal))
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
