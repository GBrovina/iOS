//
//  main.swift
//  L5_GBrovina
//
//  Created by Галина  Бровина  on 25.11.2019.
//  Copyright © 2019 Галина  Бровина . All rights reserved.
//

import Foundation

//1. Создать протокол «Car» и описать свойства, общие для автомобилей, а также метод действия.
//2. Создать расширения для протокола «Car» и реализовать в них методы конкретных действий с автомобилем: открыть/закрыть окно, запустить/заглушить двигатель и т.д. (по одному методу на действие, реализовывать следует только те действия, реализация которых общая для всех автомобилей).
//3. Создать два класса, имплементирующих протокол «Car» - trunkCar и sportСar. Описать в них свойства, отличающиеся для спортивного автомобиля и цистерны.
//4. Для каждого класса написать расширение, имплементирующее протокол CustomStringConvertible.
//5. Создать несколько объектов каждого класса. Применить к ним различные действия.
//6. Вывести сами объекты в консоль.

protocol Car{
    var model:String {get}
    var year:Int{get}
    func Passenger()
}
extension Car{
    func windowCar(){
    }
}
class landRover:Car{
      enum windowMove{
        case open
        case close
    }
    enum passengerCount{
        case one
        case two
        case tree
        case empty
    }
    var model:String
    var year:Int
    var window:windowMove
    var passenger:passengerCount
    init(model:String, year:Int, window:windowMove, passenger:passengerCount) {
        self.model = model
        self.year = year
        self.window = window
        self.passenger = passenger
    }

    func Passenger() {
        switch passenger {
            case .one:
                print("В салоне 1 пассажир")
            case .two:
                print("В салоне 2 пассажира")
            case .tree:
                print("В салоне 3 пассажира")
            case .empty:
                print("В салоне никого нет")
            }

    }
    func windowCar() {
        switch window {
        case .open:
            print ("Окно открыто")
        case .close:
            print ("Окно закрыто")
        }
        }
}
extension landRover: CustomStringConvertible {
    var description:String {
        return "Автомобиль \(model) \(year) года выпуска"
    }
}

    
class sportCar:landRover{
    enum engine:String{
        case TDV6 = "TDV6"
        case SDV6 = "SDV6"
        case SDV8 = "SDV8"
    }
    var maxSpeed:Int
    var engineType:engine
    init (model:String, year:Int, window:windowMove, passenger:passengerCount, maxSpeed:Int, engineType:engine){
        self.maxSpeed = maxSpeed
        self.engineType = engineType
        super.init (model:model, year:year, window:window, passenger:passenger)
    }
}
class trunkCar:landRover {
    var maxWeightOnHat:Int
    init (model:String, year:Int, window:windowMove, passenger:passengerCount, maxWeightOnHat:Int){
        self.maxWeightOnHat = maxWeightOnHat
        super.init (model:model, year:year, window:window, passenger:passenger)
    }
}
var modelCar = landRover(model: "Range Rover", year: 2019, window: .close, passenger: .tree)
print (modelCar.description)
modelCar.Passenger()
modelCar.windowCar()
var modelCar1 = sportCar(model: "Range Rover Sport", year: 2019, window: .open, passenger: .two, maxSpeed: 260, engineType: .SDV8)
print (modelCar1.description)
modelCar1.Passenger()
modelCar1.windowCar()
var modelCar2 = trunkCar(model: "Range Rover Discovery Sport", year: 2019, window: .open, passenger: .empty, maxWeightOnHat: 75)
print (modelCar2.description)
modelCar2.Passenger()
modelCar2.windowCar()



