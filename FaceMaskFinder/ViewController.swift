//
//  ViewController.swift
//  FaceMaskFinder
//
//  Created by Lucia Holzheu on 7/20/17.
//  Copyright © 2017 Lucia Holzheu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var sensitiveButton: UISwitch!
    @IBOutlet var theScreen: UIView!
    @IBOutlet weak var skinWheel: UIPickerView!
    
    
    let components = [["Oily", "Dry", "Combination"], ["Acne", "Pores", "Redness", "Oil Control", "Age Prevention", "Dark Spots/Uneven Skin Tone", "Dryness", "Lack of Radiation", "Lifting and Firming"]]
    
    var selections: (String, String) = ("No", "Nothing")
    
    var skinType: String = "Oily"
    
    var skinProblem: String = "Acne"
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.skinWheel.dataSource = self
        self.skinWheel.delegate = self
        skinWheel.frame.size.width = theScreen.frame.size.width
        skinWheel.center.x = theScreen.center.x
        submitButton.center.x = theScreen.center.x
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sorter = Sorter(skinType: skinType, skinProblem: skinProblem)
        if let productsTableViewController = segue.destination as? ProductsTableViewController {
            productsTableViewController.sorter = sorter
        }
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return components.count
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return components[component].count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return components[component][row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            skinType = components[component][row]
            print("\(skinType) selected and saved")
        } else {
            skinProblem = components[component][row]
            print("\(skinProblem) selected and saved")
        }
        
    }
    @IBAction func submitButton(_ sender: UIButton) {
        selections.0 = skinType
        selections.1 = skinProblem
        print("\(skinType) and \(skinProblem)")
    }
    



}

