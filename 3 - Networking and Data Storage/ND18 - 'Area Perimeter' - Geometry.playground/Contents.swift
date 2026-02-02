//  🏔️ MTECH Code Challenge ND18: "Area Perimter"
//  Concept: Practice a simple math warmup

//  Instructions:
    //  You are given the length and width of a 4-sided polygon. The polygon can either be a rectangle or a square.
    //  If it is a square, return its area. If it is a rectangle, return its perimeter.

//  Examples:
    //  Input: 5, 5
    //  Logic: Square, area is length * width, so 5 * 5
    //  Output: 25

    //  Input: 10, 5
    //  Logic: Rectangle, perimeter is 2(length) + 2(width)
    //  Output: 30

//  ⌺ Black Diamond Challenge:
    //  Create a new function that takes three lengths for the three sides of a triangle. Calculate and return its perimeter and its area.

import Foundation

func areaPerimeter(_ sideA: Int, _ sideB: Int) -> Int {
    guard sideA > 0 && sideB > 0 else { return 0 }
    if sideA == sideB {
        return sideA * sideB
    } else {
        return ( 2 * sideA ) + ( 2 * sideB )
    }
}

func triangleCalc(_ sideA: Double, _ sideB: Double, _ sideC: Double) -> (perimeter: Double, Area: Double) {
    let perimeter = sideA + sideB + sideC
    let semiPerimeter = perimeter / 2
    let area = sqrt(semiPerimeter * (semiPerimeter - sideA) * (semiPerimeter - sideB) * (semiPerimeter - sideC))
    return (perimeter, area)
}

print(areaPerimeter(5, 5))
print(areaPerimeter(10, 5))
print(areaPerimeter(0, 5))
print(triangleCalc(7, 5, 3))
