//
//  ColorPickerViewController.swift
//  Color Picker
//
//  Created by McEwen, Joshua A. (MU-Student) on 3/20/19.
//  Copyright © 2019 McEwen, Joshua A. (MU-Student). All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController {
    
    struct Colors{
        var color = String()
        var UI = UIColor.white
    }
    
    var colorNum = 0
    
    var colorsA: [Colors] = []
   // var colorsA: [Colors] = [(color: "red", UI: UIColor.red)]
   // var color1: Colors = Colors(color: "red", UI: UIColor.red)
   // colorsArray.append(Colors(color: red, UI: UIColor.red))
   
    
    @IBOutlet weak var ColorPickerView: UIPickerView!
    
    @IBOutlet weak var ColorLabe: UILabel!
    
    
    override func viewDidLoad() {
         //colorsA.append(color1)
        
        super.viewDidLoad()
        colorsA.append(Colors(color: "Red", UI: UIColor.red))
        colorsA.append(Colors(color: "Orange", UI: UIColor.orange))
        colorsA.append(Colors(color: "Yellow", UI: UIColor.yellow))
        colorsA.append(Colors(color: "Green", UI: UIColor.green))
        colorsA.append(Colors(color: "Blue", UI: UIColor.blue))
        colorsA.append(Colors(color: "Purple", UI: UIColor.purple))
        ColorPickerView.dataSource = self
        ColorPickerView.delegate = self
        //colorNum = 
        // Do any additional setup after loading the view.
    }
    
    
    
    //switch colorV

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension ColorPickerViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colorsA.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        ColorLabe.text = colorsA[row].color
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        //let RV: String = colorsA[row].color
        return colorsA[row].color
    }
    
    /*func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int) -> UIColor {
        return colorsA[row].UI
    } */

}
