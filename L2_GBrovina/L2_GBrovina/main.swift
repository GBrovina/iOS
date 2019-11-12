//
//  main.swift
//  L2_GBrovina
//
//  Created by Галина  Бровина  on 11.11.2019.
//  Copyright © 2019 Галина  Бровина . All rights reserved.
//

import Foundation

//Написать функцию, которая определяет четное число или нет
func evenCount (count:Int)->(){
    if count%2==0{
        print ("\(count) Четное")
    }else{
        print ("\(count) Нечетное")
    }
}
evenCount (count: 4)
evenCount(count: 7)
evenCount(count: 99)

//Написать функцию, которая определяет делится ли число без остатка на 3 или нет
func oddCount (count:Int)->(){
    if count%3==0{
        print ("\(count) делится на 3")
    }else{
        print ("\(count) не делится на 3")
    }
}
oddCount (count: 3)
oddCount(count: 45)
oddCount(count: 1265)

//Создать возрастающий массив из 100 чисел
var arrayFirst:[Int]=[]
for i in 0...100{
    arrayFirst.append(i)
}
print ("Возрастающий массив из 100 чисел \n\(arrayFirst)")

//Удалить из этого массива все четные числа и все числа, которые делятся на 3

for (_,value) in arrayFirst.enumerated() {
    if ((value%2)==0)||((value%3)==0){
        arrayFirst.remove(at: arrayFirst.firstIndex(of:value)!)
    }
}
print ("Массив Без четных чисел и чисел делящихся на 3 \n \(arrayFirst)")

//Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 100 элементов
func arrayFib (arrayElement:Int)->([Int]){
    var array:[Int]=[0,1]
    var c:Int
    for i in 2...arrayElement {
        c=array[i-1]+array[i-2]
        array.append(c)
    }
    return array
}
print ("Ряд Фбонначи \n \(arrayFib(arrayElement: 50))")


//Заполнить массив из 100 элементов различными простыми числами. Натуральное число, большее единицы, называется простым, если оно делится только на себя и на единицу.

var arraySimple:[Int]=[]
for r in 2...400{
    arraySimple.append(r)
}

var p:Int=2
for f in 2...400{
    for (_,value) in arraySimple.enumerated() {
        if (value%(f*p))==0{
        arraySimple.remove(at: arraySimple.firstIndex(of:value)!)
        }
    }
}
repeat{
for (_,value) in arraySimple.enumerated(){
    if p<value{
    p=value
    break
    }
}
for f in 2...400{
    for (_,value) in arraySimple.enumerated() {
        if (value%(f*p))==0{
        arraySimple.remove(at: arraySimple.firstIndex(of:value)!)
        }
    }
    }}
while p<20
print ("Простые числа \n \(arraySimple)")




