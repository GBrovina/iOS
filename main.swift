//
//  main.swift
//  L1_BrovinaGalina
//
//  Created by Галина  Бровина  on 09.11.2019.
//  Copyright © 2019 Галина  Бровина . All rights reserved.
//

import Foundation

//Задание 1.Решить квадратное уравнение
print("Квадратное уравнение ax^2+bx+c=0")
print("Введите параметр a квадратного уравнения:")
var userA=readLine()
print("Введите параметр b квадратного уравнения:")
var userB=readLine()
print("Введите параметр c квадратного уравнения:")
var userC=readLine()

var a=Double(userA!)!
var b=Double(userB!)!
var c=Double(userC!)!
var x1:Double
var x2:Double
var D:Double
var xF1:Float
var xF2:Float

if a==1{
 print ("Квадратное уравнение: x^2+\(b)x+\(c)=0")
}else{
print ("Квадратное уравнение: \(a)x^2+\(b)x+\(c)=0")
}
D=pow(b, 2)-4*a*c
print ("Дискриминант: \(D)")
if D<0 {
    print ("Дискриминант меньше нуля")
}else if D>0{
    x1=(-b+sqrt(D))/2*a
    x2=(-b-sqrt(D))/2*a
    xF1=Float(x1)
    xF2=Float(x2)
    print ("Корень квадратного уравнения:\n x1=\(xF1)\n x2=\(xF2) ")
}else if D==0{
    x1=(-b)/2*a
    xF1=Float(x1)
    print ("Дискриминант равен 0\nКорень квадратного уравнения:\n x1,2=\(xF1)\n")
}


//Задание 2. Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника
print("Введите первый катет:")
var userCat1=readLine()
print("Введите второй катет:")
var userCat2=readLine()
var cat1=Double(userCat1!)!
var cat2=Double(userCat2!)!

let gip:Double
let perimetr:Double
let square:Double

gip=sqrt(pow(cat1, 2)+pow(cat2, 2))
perimetr=cat1+cat2+gip
square=0.5*cat1*cat2

    
print ("Гипотенуза треугольника: \(Float(gip))\nПериметр треугольника :\(Float(perimetr)) \nПлощадь треугольника :\(Float(square))")

//Задание 3. Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.
print("Введите сумму вклада:")
var depositOfUser=readLine()
print("Введите годовой процент:")
var persentOfUser=readLine()
var persent=Double(persentOfUser!)!
var deposit=Double(depositOfUser!)!
var profit:Double
var d:Double=0
for _ in (1...5){
profit=((d+deposit)*persent)/100
    d=profit
    deposit+=profit
}
print("Сумма вклада через 5 лет составит: \(deposit)")




