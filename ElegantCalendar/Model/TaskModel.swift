//
//  TaskModel.swift
//  ElegantCalendar
//
//  Created by Kyungyun Lee on 02/03/2022.
//

import SwiftUI

struct Task : Identifiable {
    var id = UUID().uuidString
    var title : String
    var time : Date = Date()
}

struct TaskMetaModel : Identifiable {
    var id = UUID().uuidString
    var task : [Task]
    var taskDate : Date
}

func getSampleDate(offset: Int) -> Date {
    
    let calendar = Calendar.current
    let date = calendar.date(byAdding: .day, value: offset, to: Date())
    return date ?? Date()
}

var tasks : [TaskMetaModel] = [
   //sampleData
    TaskMetaModel(task: [Task(title: "hi"), Task(title: "bi")], taskDate: getSampleDate(offset: 1)),    TaskMetaModel(task: [Task(title: "ci"), Task(title: "bi")], taskDate: getSampleDate(offset: 3)),     TaskMetaModel(task: [Task(title: "di"), Task(title: "bi")], taskDate: getSampleDate(offset: -1)),

 

]
