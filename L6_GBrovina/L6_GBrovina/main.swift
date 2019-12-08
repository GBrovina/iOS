//
//  main.swift
//  L6_GBrovina
//
//  Created by Галина  Бровина  on 03.12.2019.
//  Copyright © 2019 Галина  Бровина . All rights reserved.
//
//1. Реализовать свой тип коллекции «очередь» (queue) c использованием дженериков.
//2. Добавить ему несколько методов высшего порядка, полезных для этой коллекции (пример: filter для массивов)
//3. * Добавить свой subscript, который будет возвращать nil в случае обращения к несуществующему индексу.
import Foundation
protocol ageOfperson{
    var ageM:Int{get set}
}
class women:ageOfperson{
    var women:String
    var ageM:Int
    init(women:String,ageM:Int) {
        self.women=women
        self.ageM=ageM
    }
}
    extension women:CustomStringConvertible{
        var description:String{
            return "\(women) \(ageM)"
        }
    }

class men:ageOfperson{
    var men:String
    var ageM:Int
    init(men:String,ageM:Int) {
        self.men=men
        self.ageM=ageM
    }
}
extension men:CustomStringConvertible{
       var description:String{
           return "\(men) \(ageM)"
       }
   }
struct queue<T:ageOfperson>{
    var person=[T]()
    mutating func push (_ persons:T){
        return person.append(persons)
    }
    mutating func pop()->T?{
        return person.removeFirst()
    }
//    subscript (index:Int)->Int{
//        var age=0
//        for index in 0..<person.count {
//            age+=self.person[index].ageM
//        }
//            return age
//       }
    subscript (index:Int)->T?{
        if (index>=0)&&(index<person.count) {
              return person[index]
         }
              return nil
       }
    
}
var Men=queue<men>()
Men.push(men(men:"Василий",ageM: 64))
Men.push(men(men:"Сергей",ageM: 36))
Men.push(men(men:"Дмитрий",ageM: 30))
Men.push(men(men:"Юрий",ageM: 31))
Men.push(men(men:"Антон",ageM: 29))
print (Men.person.description)
var agesOfMen=Men.person
agesOfMen.sort{$0.ageM<$1.ageM}
print (agesOfMen)
Men.pop()
Men.pop()
print (Men.person.description)
print((Men[1]!))
print((Men[4]))
var Women=queue<women>()
Women.push(women(women:"Татьяна",ageM: 60))
Women.push(women(women:"Галина",ageM: 31))
Women.push(women(women:"Ольга",ageM: 30))
Women.push(women(women:"Юлия",ageM: 29))
Women.push(women(women:"Раиса",ageM: 24))
print(Women.person.description)
var agesOfWomen=Women.person
agesOfWomen.sort{$0.ageM<$1.ageM}
print (agesOfWomen)



