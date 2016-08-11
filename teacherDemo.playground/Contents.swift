//: Playground - noun: a place where people can play

import UIKit

var something: Double

something = 5.0

var somethingElse = 10.0

somethingElse = 12.0

func nameOfTheFunction(numberOne: Double, numberTwo: Double) -> Double {

    let result = numberOne + numberTwo
    // print("The result is: \(result)")

    return result
}

nameOfTheFunction(something, numberTwo: somethingElse)
nameOfTheFunction(3.0, numberTwo: 6.0)

let resultOfFunction = nameOfTheFunction(something, numberTwo: somethingElse)



class Car {
    let wheels = 4

    func go() {
        print("I'm driving with \(wheels) wheels")
    }
}

var car = Car()

car.wheels

car.go()

something

class Vehicle {
    var wheels: Int

    init(numberOfWheels: Int) {
        wheels = numberOfWheels
    }

    func go() {
        print("I'm driving with \(wheels) wheels")
    }
}

var trike = Vehicle(numberOfWheels: 6)

trike.wheels


class Student {
    var exam1: Double
    var exam2: Double
    var paper: Double

    init(exam1: Double, exam2: Double, paper: Double) {
        self.exam1 = exam1
        self.exam2 = exam2
        self.paper = paper
    }
}

let jeremy = Student(exam1: 86.0, exam2: 72.0, paper: 90.0)

jeremy.exam1
jeremy.paper

class Teacher {
    let exam1Weight = 0.3
    let exam2Weight = 0.3
    let paperWeight = 0.4

    func termPercentage(student: Student) -> Double {
        return (student.exam1 * exam1Weight) + (student.exam2 * exam2Weight) + (student.paper * paperWeight)
    }

    func grade(percentage: Double) -> String {
        if percentage >= 90 {
            return "A"
        } else if percentage >= 80 {
            return "B"
        } else if percentage >= 60 {
            return "C"
        } else if percentage >= 50 {
            return "D"
        } else {
            return "F"
        }
    }

    func grade(student: Student) -> String {
        let studentTermPercentage = termPercentage(student)
        let studentGrade = grade(studentTermPercentage)

        return studentGrade
    }
}

class ReallyHarshTeacher: Teacher {

    let tilt = -10.0

    override func termPercentage(student: Student) -> Double {
        let normalPercentage = super.termPercentage(student)

        return normalPercentage + tilt
    }
}



let mrButton = Teacher()

mrButton.termPercentage(jeremy)

mrButton.grade(80)

mrButton.grade(jeremy)



let mrMobsby = ReallyHarshTeacher()

mrMobsby.grade(jeremy)










