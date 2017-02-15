//
//  ViewController.swift
//  Vistas en iOS
//
//  Created by Macbook Pro on 1/26/17.
//  Copyright © 2017 Area 51. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblTitulo: UILabel!
    @IBOutlet weak var sldNumeroImagen: UISlider!
    @IBOutlet weak var swModificarManual: UISwitch!
    @IBOutlet weak var btnAceptar: UIButton!
    @IBOutlet weak var btnSiguiente: UIButton!
    @IBOutlet weak var segEstilos: UISegmentedControl!
    @IBOutlet weak var imgImagen: UIImageView!
    @IBOutlet weak var txtNumeroImagen: UITextField!
    @IBOutlet weak var vwContenedor: UIView!
    @IBOutlet weak var lblError: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sldNumeroImagenChange(_ sender: UISlider) {
        //
        let numeroImagen = sender.value
        let num = Int(numeroImagen)
        
        imgImagen.image = UIImage(named: "image_\(num)")
    }
    
    @IBAction func swModificarManualChange(_ sender: UISwitch) {
        
        let oculto = !sender.isOn
        vwContenedor.isHidden = oculto
    }
    
    @IBAction func btnAceptarTouch(_ sender: UIButton) {
        
        let numeroImagen = txtNumeroImagen.text
        let num = Int(numeroImagen!)
        
        if num! >= 0 && num! <= 7 {
            imgImagen.image = UIImage(named: "image_\(num!)")
            lblError.text = ""
        } else {
            lblError.text = "Numero Incorrecto!"
        }
    }

    @IBAction func btnSiguienteTouch(_ sender: UIButton) {
    }
    
    @IBAction func segEstilosChange(_ sender: UISegmentedControl) {
        
        let indiceSeleccionado = sender.selectedSegmentIndex
        
        //
        var color:UIColor
        
        switch indiceSeleccionado {
        case 0:
            color = UIColor(red: 1, green: 190.0/255.0, blue: 0, alpha: 1)
        case 1:
            color = UIColor.red
        default:
            color = UIColor.black
        }
        
        lblTitulo.backgroundColor = color
        sldNumeroImagen.minimumTrackTintColor = color
        swModificarManual.onTintColor = color
        btnAceptar.setTitleColor(color, for: UIControlState.normal)
        btnSiguiente.setTitleColor(color, for: UIControlState.normal)
        segEstilos.tintColor = color
    }
    
    
}

