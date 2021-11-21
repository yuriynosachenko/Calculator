//
//  ViewController.swift
//  Calculator2
//
//  Created by Yurik Nosachenko on 05.10.2021.
//

import UIKit
indirect enum CalcActionType {
    case dodavania
    case vidnimania
    case mnogynia
    case dilenia
    case dorivnue(CalcActionType)
    case none
}
class CalculatorViewController: UIViewController {

    private var numbers: [Int] = []
    private var actionType:CalcActionType = .none {
        didSet{
            if numbers.count == 2{
                calculate()
            }
        }
    }
        
    @IBOutlet weak var result_LB: UILabel!
    @IBOutlet var numbersButton: [UIButton]!
    
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
        actionType = .dorivnue(actionType)
    }
    
    @IBAction func touchOnNumber(_ sender: UIButton) {
        if sender.tag == 10{
            result_LB.text = "0"
            numbers.removeAll()
        }else{
            let numberValue = sender.tag
            numbers.append(numberValue)
            result_LB.text = "\(numberValue)"
        }
    }
    
    private func calculate() {
        var result = 0
        var result1 = 0.0
        switch actionType {
        case .dodavania:
            result = numbers[0] + numbers[1]
        case .vidnimania:
            result = numbers[0] - numbers[1]
        case .mnogynia:
            result = numbers[0] * numbers[1]
        case .dilenia:
            result1 = Double(numbers[0]) / Double(numbers[1])
        case let .dorivnue(action):
            actionType = action
            numbers.removeAll()
            return
        case .none:
            return
        }
        switch actionType {
        case .dilenia:
            result_LB.text = "\(result1)"
        default:
            result_LB.text =  "\(result)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}

