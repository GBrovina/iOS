//
//  main.swift
//  L7_GBrovina
//
//  Created by Галина  Бровина  on 06.12.2019.
//  Copyright © 2019 Галина  Бровина . All rights reserved.
//

import Foundation

enum TicketError:Error{
    case soldOut
    case insufficentMoney(neededMoney:Int)
    case offMovie
}

struct Item {
    var price:Int
    var place:Int
}

class movieTheatre{
    var movie=[
        "Comedy":Item(price: 10, place: 30),
        "Horror":Item(price: 7, place: 35),
        "Drama":Item(price: 4, place: 15)
    ]
    var deposite=0
    func vend(itemName name:String)throws{
        guard let item = movie[name] else{
            throw TicketError.offMovie
        }
        guard item.place>0 else{
            throw TicketError.soldOut
        }
        guard item.price<=deposite else {
            throw TicketError.insufficentMoney(neededMoney: item.price-deposite)
        }
        deposite-=item.price
        var newItem=item
        newItem.place-=1
        movie[name]=newItem
        print ("Вы купили билет на \(name)")
    }
}

let favoriteMovie=[
    "Sergey":"Comedy",
    "Galina":"Drama",
    "Yuri":"Horror"
]
func buyTicket(person:String, movie:movieTheatre) throws {
    let movieName=favoriteMovie[person] ?? " "
    try movie.vend(itemName:movieName)
}
var moviesTheatre=movieTheatre()
moviesTheatre.deposite=30

do{
    try buyTicket(person: "Sergey", movie: moviesTheatre)
}
catch TicketError.soldOut {
    print ("All tickets has sold out")}
catch TicketError.offMovie {
    print ("Film is over")}
catch TicketError.insufficentMoney(let Money){
    print ("Not enought money. Give \(Money)")
}

    











