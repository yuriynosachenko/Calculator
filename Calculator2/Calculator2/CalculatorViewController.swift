//
//  ViewController.swift
//  Calculator2
//
//  Created by Yurik Nosachenko on 05.10.2021.
//

import UIKit
enum CalcActionType {
    case dodavania
    case vidnimania
    case mnogynia
    case dilenia
    case dorivnue
    case none
}
class CalculatorViewController: UIViewController {
    var actionType:CalcActionType = .none
    var number1: Int?
    var number2: Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func pressDilenia(_ sender: UIButton) {
        actionType = .dilenia
    }
    @IBAction func pressMnogynia(_ sender: UIButton) {
        actionType = .mnogynia
    }
    
    @IBAction func pressVidnimania(_ sender: UIButton) {
        actionType = .vidnimania
    }
    @IBAction func pressDodavania(_ sender: UIButton) {
        actionType = .dodavania
    }
    @IBAction func pressDorivnue(_ sender: UIButton) {
        actionType = .dorivnue
    }
}

