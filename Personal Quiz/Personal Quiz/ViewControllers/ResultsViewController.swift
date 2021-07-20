//
//  ResultsViewController.swift
//  Personal Quiz
//
//  Created by brubru on 19.07.2021.
//  Copyright © 2021 Alexey Efimov. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var infoTypeLabel: UILabel!
    
    
    var resultsChoosen: [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let type = getType(for: resultsChoosen)
        typeLabel.text = "Вы - \(type.rawValue) !"
        infoTypeLabel.text = type.definition
        self.navigationItem.setHidesBackButton(true, animated: false)
    }
        
    private func getType(for answerChoosen: [Answer]) -> AnimalType {
        var typesCounts = [AnimalType: Int]()
        for answer in resultsChoosen {
            typesCounts[answer.type] = (typesCounts[answer.type] ?? 0) + 1
        }
        let sortedTypesCounts = typesCounts.sorted {$0.value > $1.value}
        return sortedTypesCounts[0].key
    }
    
    
    
}
