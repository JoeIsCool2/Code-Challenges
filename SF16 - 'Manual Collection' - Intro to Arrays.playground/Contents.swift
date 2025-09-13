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
        //  `collectFee()` should charge the car's owner $1 for each character in the string for their parking space. Add to

//  Notes:
    //  The goal here is to try to handle a large set of data manually, without using a collection like Array or Dictionary. Obviously, those would be better solutions to this problem, but avoid them nonetheless.

//  ⌺ Black Diamond Challenge:
    //  A couple more functions are needed:
        //  ParkingLot.explode() should immediately cause any and all Ford Pintos to explode, thus emptying their parking space.
        //  Obviously you will want to be able to view a list of all cars parked in your lot. ParkingLot.list() should print a list of all spaces, including space number; if a space is empty, don't print an empty string, but the word "Empty" instead.

class ParkingLot {
    var cashCollected = 0.0
    
    var parkingSpace1 = ""
    var parkingSpace2 = ""
    var parkingSpace3 = ""
    var parkingSpace4 = ""
    var parkingSpace5 = ""
    var parkingSpace6 = ""
    var parkingSpace7 = ""
    var parkingSpace8 = ""
    var parkingSpace9 = ""
    var parkingSpace10 = ""
    var parkingSpace11 = ""
    var parkingSpace12 = ""
    var parkingSpace13 = ""
    var parkingSpace14 = ""
    var parkingSpace15 = ""
    var parkingSpace16 = ""
    var parkingSpace17 = ""
    var parkingSpace18 = ""
    var parkingSpace19 = ""
    var parkingSpace20 = ""
    
    // Helper: Get/set by number
    private func getParkingSpace(_ n: Int) -> String {
        switch n {
        case 1: return parkingSpace1
        case 2: return parkingSpace2
        case 3: return parkingSpace3
        case 4: return parkingSpace4
        case 5: return parkingSpace5
        case 6: return parkingSpace6
        case 7: return parkingSpace7
        case 8: return parkingSpace8
        case 9: return parkingSpace9
        case 10: return parkingSpace10
        case 11: return parkingSpace11
        case 12: return parkingSpace12
        case 13: return parkingSpace13
        case 14: return parkingSpace14
        case 15: return parkingSpace15
        case 16: return parkingSpace16
        case 17: return parkingSpace17
        case 18: return parkingSpace18
        case 19: return parkingSpace19
        case 20: return parkingSpace20
        default: return ""
        }
    }
    private func setParkingSpace(_ n: Int, value: String) {
        switch n {
        case 1: parkingSpace1 = value
        case 2: parkingSpace2 = value
        case 3: parkingSpace3 = value
        case 4: parkingSpace4 = value
        case 5: parkingSpace5 = value
        case 6: parkingSpace6 = value
        case 7: parkingSpace7 = value
        case 8: parkingSpace8 = value
        case 9: parkingSpace9 = value
        case 10: parkingSpace10 = value
        case 11: parkingSpace11 = value
        case 12: parkingSpace12 = value
        case 13: parkingSpace13 = value
        case 14: parkingSpace14 = value
        case 15: parkingSpace15 = value
        case 16: parkingSpace16 = value
        case 17: parkingSpace17 = value
        case 18: parkingSpace18 = value
        case 19: parkingSpace19 = value
        case 20: parkingSpace20 = value
        default: break
        }
    }
    
    func parkCar(_ carType: String, parkingSpace: Int) {
        setParkingSpace(parkingSpace, value: carType)
    }
    
    func towCar(parkingSpace: Int) {
        setParkingSpace(parkingSpace, value: "")
    }
    
    func giveTicket(parkingSpace: Int) {
        let current = getParkingSpace(parkingSpace)
        if !current.isEmpty && !current.contains("- TICKETED") {
            setParkingSpace(parkingSpace, value: current + " - TICKETED")
        }
    }
    
    func collectFee(parkingSpace: Int) {
        let car = getParkingSpace(parkingSpace)
        if !car.isEmpty {
            let fee = Double(car.count)
            cashCollected += fee
            print("Collected $\(fee) from space #\(parkingSpace)")
        }
    }
    
    // Black Diamond: explode
    func explode() {
        for i in 1...20 {
            let car = getParkingSpace(i)
            if car.contains("Ford Pinto") {
                setParkingSpace(i, value: "")
                print("Ford Pinto in space #\(i) exploded!")
            }
        }
    }
    // Black Diamond: list
    func list() {
        for i in 1...20 {
            let car = getParkingSpace(i)
            if car.isEmpty {
                print("Space #\(i): Empty")
            } else {
                print("Space #\(i): \(car)")
            }
        }
    }
}

// Replace playground test code with a showcase of all functions:
var parkingLot = ParkingLot()
parkingLot.parkCar("Ford Pinto", parkingSpace: 1)
parkingLot.parkCar("Honda Civic", parkingSpace: 2)
parkingLot.parkCar("Tesla Model 3", parkingSpace: 3)
parkingLot.giveTicket(parkingSpace: 2)
parkingLot.collectFee(parkingSpace: 2)
parkingLot.towCar(parkingSpace: 3)
parkingLot.list()
parkingLot.explode()
parkingLot.list()
print("Total cash collected: $\(parkingLot.cashCollected)")
