//
//  Units.swift
//  Final
//
//  Created by Payton Binns on 5/5/19.
//  Copyright © 2019 Payton Binns. All rights reserved.
//

import Foundation

enum Unit: Int {
    case cup = 0, pint, quart, gallon, fluidOunce, tablespoon, teaspoon
    func description() -> String {
        switch self {
        case .cup:
            return "cup"
        case .pint:
            return "pint"
        case .quart:
            return "quart"
        case .gallon:
            return "gallon"
        case .fluidOunce:
            return "fluid ounce"
        case .tablespoon:
            return "tablespoon"
        case .teaspoon:
            return "teaspoon"
        }
    }
   
    static func allCases() -> [String] {
        var i = 0
        var list = [String]()
        while let unit = Unit(rawValue: i) {
            list.append(unit.description())
            i = i + 1
        }
        return list
    }
    
    
    func convertTo(unit to: Unit, value val: Double) -> Double? {
        var constant = 1.0
        switch self {
        case .cup:
            if to == .pint {
                constant = 0.5
            } else if to == .quart {
                constant = 0.25
            } else if to == .gallon {
                constant = 0.0625
            } else if to == .fluidOunce {
                constant = 8
            } else if to == .tablespoon {
                constant = 16
            } else if to == .teaspoon {
                constant = 48
            }
        case .pint:
            if to == .cup {
                constant = 2
            } else if to == .quart {
                constant = 0.5
            } else if to == .gallon {
                constant = 0.125
            } else if to == .fluidOunce {
                constant = 16
            } else if to == .tablespoon {
                constant = 32
            } else if to == .teaspoon {
                constant = 96
            }
        case .quart:
            if to == .cup {
                constant = 4
            } else if to == .pint {
                constant = 2
            } else if to == .gallon {
                constant = 0.25
            } else if to == .fluidOunce {
                constant = 32
            } else if to == .tablespoon {
                constant = 64
            } else if to == .teaspoon {
                constant = 192
            }
        case .gallon:
            if to == .cup {
                constant = 16
            } else if to == .pint {
                constant = 8
            } else if to == .quart {
                constant = 4
            } else if to == .fluidOunce {
                constant = 128
            } else if to == .tablespoon {
                constant = 256
            } else if to == .teaspoon {
                constant = 768
            }
        case .fluidOunce:
            if to == .cup {
                constant = 0.125
            } else if to == .pint {
                constant = 0.0625
            } else if to == .quart {
                constant = 0.03125
            } else if to == .gallon {
                constant = 0.0078125
            } else if to == .tablespoon {
                constant = 2
            } else if to == .teaspoon {
                constant = 6
            }
        case .tablespoon:
            if to == .cup {
                constant = 0.0625
            } else if to == .pint {
                constant = 0.03125
            } else if to == .quart {
                constant = 0.015625
            } else if to == .gallon {
                constant = 0.00390625
            } else if to == .fluidOunce {
                constant = 0.5
            } else if to == .teaspoon {
                constant = 3
            }
        case .teaspoon:
            if to == .cup {
                constant = 0.0208333
            } else if to == .pint {
                constant = 0.0104167
            } else if to == .quart {
                constant = 0.00520833
            } else if to == .gallon {
                constant = 0.00130208
            } else if to == .fluidOunce {
                constant = 0.166667
            } else if to == .tablespoon {
                constant = 0.333333
            }
        }
        
        return constant * val
        
        }
    
    static func fromString(_ string: String) -> Unit? {
        if string == "cup" {
            return .cup
        } else if string == "pint" {
            return .pint
        } else if string == "quart" {
            return .quart
        } else if string == "gallon" {
            return .gallon
        } else if string == "fluid ounce" {
            return .fluidOunce
        } else if string == "tablespoon" {
            return .tablespoon
        } else if string == "teaspoon" {
            return .teaspoon
        } else {
            return nil
        }
    }
    }
