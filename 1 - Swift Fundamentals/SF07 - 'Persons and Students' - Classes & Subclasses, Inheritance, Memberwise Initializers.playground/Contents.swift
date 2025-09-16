//  🏔️ MTECH Code Challenge SF07: "Persons and Students"
//  Concept: Practice creating classes, using inheritance to create subclasses, and creating initializers

//  Instructions:
    //  Under each step below, write the required code.

import Foundation

//  1) Create a Person class
    //  Include a name, age, weight, and favoriteColor properties
class Person {
    var name: String = "unknown"
    var age: Int = 0
    var weight: Int = 0
    var favoriteColor: String = "red"
}

//  2) Create a Student class
    //  This class inherits from Person.
    //  A student also has a currentClass, a grade, and a gpa property
class Student: Person {
    var currentClass: String = "unknown"
    var grade: Int = 0
    var gpa: Int = 0
}

//  ⌺ Black Diamond Challenge:
    //  Create a third class called Teacher.
    //  Include a reasonable set of properties.
    //  Write a function that can take either a student or a teacher and print their age.
class Teacher: Person {
    var currentClass: String = "unknown"
    var subject: String = "unknown"
    var amountOfClasses: Int = 0
}

 
