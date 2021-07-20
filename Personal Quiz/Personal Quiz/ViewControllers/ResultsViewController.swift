//
//  ResultsViewController.swift
//  Personal Quiz
//
//  Created by brubru on 19.07.2021.
//  Copyright © 2021 Alexey Efimov. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    // 1. Передать сюда массив с ответами
    // 2. Определить наиболее часто встерчающийся тип живтоного
    // 3. Отобразить результат в соответсвии с этим животным
    // 4. Избавиться от кнопки возврата назад на экране результатов
    
    
    var resultsChoosen: [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getType(for: resultsChoosen)
        
    }
        
    func getType(for answerChoosen: [Answer]) -> AnimalType {
        var typesCounts = [AnimalType: Int]()
        for answer in resultsChoosen {
            typesCounts[answer.type] = (typesCounts[answer.type] ?? 0) + 1
        }
        let sortedTypesCounts = typesCounts.sorted {$0.value > $1.value}
        return sortedTypesCounts[0].key
    }
    
    
    
}
