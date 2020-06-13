//
//  Classroom.swift
//  Classroom
//
//  Created by Apple on 6/13/20.
//  Copyright © 2020 knb. All rights reserved.
//

import Foundation

class Classroom {
    var name: String
    var headTeacher: Person
    var students: [Person]
    
    init(name: String, headTeacher: Person, students: [Person]) {
        self.name = name
        self.headTeacher = headTeacher
        self.students = students
    }
    
    func changeStudentName(_ oldName: String, _ newName: String) {
        print("Classroom|Start change student's name")
        var success: Bool = false
        for (index, student) in students.enumerated() {
            if (student.name == oldName) {
                success = true
                students[index].changeName(newName)
            }
        }
        if (!success) {
            print("Change name failed! Can not find any student with name \(oldName)\n")
        }
    }
    
    func removeStudent(_ name: String) {
        print("Classroom|Start remove student")
        var success: Bool = false
        for (index, student) in students.enumerated() {
            if (student.name == name) {
                success = true
                students.remove(at: index)
            }
        }
        if (!success) {
            print("Remove student failed! Can not find any student with name \(name)\n")
        } else {
            print("Remove student \(name) successfully!\n")
        }
    }
    
    func getInfo() {
        print("Teacher:")
        headTeacher.getInfo()
        print("Students:")
        for (index, student) in students.enumerated() {
            print("#\(index + 1)", terminator:" ")
            student.getInfo()
        }
        print("")
    }
    
    func registerStudents() {
        let namStudent: Person = Person("Nam", 15, "0969123450")
        let hoangStudent: Person = Person("Hoang", 15, "0969123451")
        let linhStudent: Person = Person("Linh", 15, "0969123452")
        let huyenStudent: Person = Person("Huyen", 15, "0969123453")
        let ducStudent: Person = Person("Duc", 15, "0969123454")

        let duongStudent: Person = Person("Duong", 15)
        let tungStudent: Person = Person("Tung", 15)
        let bangStudent: Person = Person("Bang", 15)
        let bacStudent: Person = Person("Bac", 15)
        let thanhStudent: Person = Person("Thanh", 15)

        let registeredClassmate: [Person] = [namStudent, hoangStudent, linhStudent, huyenStudent, ducStudent, duongStudent, tungStudent, bangStudent, bacStudent, thanhStudent]
        students.append(contentsOf: registeredClassmate)
    }
}
