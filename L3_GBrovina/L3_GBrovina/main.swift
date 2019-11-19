//
//  main.swift
//  L3_GBrovina
//
//  Created by Галина  Бровина  on 18.11.2019.
//  Copyright © 2019 Галина  Бровина . All rights reserved.
//

import Foundation
//Структура для легкового автомобиля
enum Engine {
    case start
    case stop
}
enum transmissionOfCar {
    case manual
    case automat
}
struct lexus {
    let model:String
    let year:Int
    var volume:Int
    var startEngine:Engine
    var transmission:transmissionOfCar
    
    mutating func engineWork() {
        if self.startEngine == .start {
        print("Двигатель заведен")
        }else {
        print("Двигатель заглушен")
       }
    }
    
    mutating func transmissionType() {
        if self.transmission == .manual {
          print("Ручная коробка передач")
          }else {
          print("Автоматическая коробка передач")
         }
      }
    
    mutating func load(weightOfLoad:Int){
        self.volume -= weightOfLoad
        print ("Погрузили \(weightOfLoad) м3 груза,свободно еще \(self.volume)  м3")
    }
}
var lexusNX=lexus(model: "NX300", year: 2019, volume: 500, startEngine: .stop, transmission: .automat)
print("Автомобиль \(lexusNX.model)")
print(lexusNX.year)
print("Объем багажника \(lexusNX.volume) м3")
lexusNX.load(weightOfLoad: 200)
lexusNX.engineWork()
lexusNX.transmissionType()

var lexusRX=lexus(model: "RX350", year: 2019, volume: 553, startEngine: .start, transmission: .manual)
print("\nАвтомобиль \(lexusRX.model)")
print(lexusRX.year)
print("Объем багажника \(lexusRX.volume) м3")
lexusRX.load(weightOfLoad: 200)
lexusRX.engineWork()
lexusRX.transmissionType()


//Структура для грузового автомобиля
enum windowOpen{
    case open
    case close
}
enum carrier{
    case full
    case empty
}
struct isuzy {
    let model:String
    let year:Int
    let volume:Int
    var window:windowOpen
    var fullCarrier:carrier
    
    mutating func loadIn(weightOfLoad:Int){
        
        if self.volume > weightOfLoad{
            print ("Вес груза \(weightOfLoad)\nЗагрузите еще \(volume-weightOfLoad)")
           self.fullCarrier = .empty
        }else{
           self.fullCarrier = .full
            print ("Загрузка завершена")
        }
        
    }

}
var isuzyElf=isuzy(model: "ElF 3.5", year: 2019, volume: 2060, window: .close, fullCarrier: .empty)
print("\nАвтомобиль \(isuzyElf.model)")
print(isuzyElf.year)
print("Грузоподъемность \(isuzyElf.volume)")
isuzyElf.loadIn(weightOfLoad: 400)

