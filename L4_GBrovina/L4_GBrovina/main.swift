//
//  main.swift
//  L4_GBrovina
//
//  Created by Галина  Бровина  on 23.11.2019.
//  Copyright © 2019 Галина  Бровина . All rights reserved.
//

import Foundation

class landRover{
    enum window:String{
        case open = "Окно открыто"
        case close = "Окно закрыто"
    }
    enum passengerCount{
        case one
        case two
        case tree
        case empty
    }
    var model:String
    var year:Int
    var window:window
    var passenger:passengerCount
    init(model:String, year:Int, window:window, passenger:passengerCount) {
        self.model = model
        self.year = year
        self.window = window
        self.passenger = passenger
    }
    func discriptoin() {
        print("Автомобиль \(model) \(year) года выпуска")
    }
    func passengers (){
        switch passenger {
        case .one: print("В салоне 1 пассажир")
        case .two:
            print("В салоне 2 пассажира")
        case .tree:
            print("В салоне 3 пассажира")
        case .empty:
            print("В салоне никого нет")
        }
    
    }
}
class sportCar:landRover {
    enum engine:String{
        case TDV6 = "TDV6"
        case SDV6 = "SDV6"
        case SDV8 = "SDV8"
    }
    var maxSpeed:Int
    var engineType:engine
    init (model:String, year:Int, window:window, passenger:passengerCount, maxSpeed:Int, engineType:engine){
        self.maxSpeed = maxSpeed
        self.engineType = engineType
        super.init (model:model, year:year, window:window, passenger:passenger)
    }
    override func discriptoin() {
        print("Автомобиль \(model) \(year) года выпуска максимальная скорость \(maxSpeed) . Тип двигателя \(engineType)")
    }
}

class trunkCar:landRover {
    var maxWeightOnHat:Int
    init (model:String, year:Int, window:window, passenger:passengerCount, maxWeightOnHat:Int){
        self.maxWeightOnHat = maxWeightOnHat
        super.init (model:model, year:year, window:window, passenger:passenger)
    }
    override func discriptoin() {
           print("Автомобиль \(model) \(year) года выпуска максимальная нагрузка на крышу \(maxWeightOnHat)")
       }
}
var modelCar = landRover(model: "Range Rover", year: 2019, window: .close, passenger: .tree)
modelCar.discriptoin()
modelCar.passengers()
print(modelCar.window.rawValue)
var modelCar1 = sportCar(model: "Range Rover Sport", year: 2019, window: .open, passenger: .two, maxSpeed: 260, engineType: .SDV8)
modelCar1.discriptoin()
modelCar1.passengers()
print(modelCar1.window.rawValue)
var modelCar2 = trunkCar(model: "Range Rover Discovery Sport", year: 2019, window: .open, passenger: .empty, maxWeightOnHat: 75)
modelCar2.discriptoin()
modelCar2.passengers()
print(modelCar1.window.rawValue)


