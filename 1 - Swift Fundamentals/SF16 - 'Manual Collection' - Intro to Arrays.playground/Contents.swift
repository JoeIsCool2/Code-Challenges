//  🏔️ MTECH Code Challenge SF16: "Manual Collection"
//  Concept: Attempt to manage a large set of values without using a Collection; identify utility of arrays and dictionaries

//  Instructions:
    //  You work for a tow company. You are building an app to help them monitor and tow cars at a local lot. Unfortunately, your boss is going through a midlife crisis and for some reason, because of this he will not tolerate you using arrays or dictionaries of any kind in your code.

    //  Below is a ParkingLot class configured to hold one property, parkingSpace1. When a car is not parked, the string will be empty. When a car is parked, the car's make and model will be stored. If the car is towed, it will go back to being empty.
    //  Now, you need to scale your app to monitor 19 more parking spaces.
        //  Add 19 more parkingSpace variables to ParkingLot, each following the naming pattern: parkingSpace1, parkingSpace2, parkingSpace3, and so on.
        //  Update the parkCar and towCar functions to accept a property called parkingSpace of type Int. Park or tow the car in the appropriate parking space accordingly.

    //  The towing company has relaxed their rules and now, not every car in the parking gets towed immediately. Add two more functions, giveTicket(parkingSpace: Int) and collectFee(parkingSpace: Int).
        //  `giveTicket()` should add "- TICKETED" to the string for that parking space.
        //  `collectFee()` should charge the car's owner $1 for each character in the string for their parking space. Add the total to the cashCollected property.

//  Notes:
    //  The goal here is to try to handle a large set of data manually, without using a collection like Array or Dictionary. Obviously, those would be better solutions to this problem, but avoid them nonetheless.

//  ⌺ Black Diamond Challenge:
    //  A couple more functions are needed:
        //  ParkingLot.explode() should immediately cause any and all Ford Pintos to explode, thus emptying their parking space.
        //  Obviously you will want to be able to view a list of all cars parked in your lot. ParkingLot.list() should print a list of all spaces, including space number; if a space is empty, don't print an empty string, but the word "Empty" instead.

import Foundation

class ParkingLot {
    var cashCollected = 0.0
    var parkingSpace1 = ""
    
    func parkCar(_ carType: String) {
        parkingSpace1 = carType
    }
    
    func towCar() {
        parkingSpace1 = ""
    }
}

var parkingLot = ParkingLot()
    
parkingLot.parkCar("Ford Pinto")

