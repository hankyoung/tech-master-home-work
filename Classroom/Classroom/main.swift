//
//  main.swift
//  Classroom
//
//  Created by Apple on 6/13/20.
//  Copyright © 2020 knb. All rights reserved.
//

import Foundation

var teacher: Person = Person("Quynh", 24, "0969123456")
var students: [Person] = []

let techmasterClass: Classroom = Classroom(name: "Techmaster", headTeacher: teacher, students: students)
print("-->Change teacher's name to Quynh Xinh:")
teacher.changeName("Quynh Xinh")

print("-->Register students into class:")
techmasterClass.registerStudents()
print("-->Techmaster class info: ")
techmasterClass.getInfo()

print("-->Change student's name from Nam to Dong:")
techmasterClass.changeStudentName("Nam", "Dong")
print("-->Change student's name from Ba to Dong:")
techmasterClass.changeStudentName("Ba", "Dong")

print("-->Remove student Duc:")
techmasterClass.removeStudent("Duc")
print("-->Remove student Lan:")
techmasterClass.removeStudent("Lan")

print("-->Techmaster class info: ")
techmasterClass.getInfo()
