//
//  SecondViewController.swift
//  protocol-practice
//
//  Created by 木元健太郎 on 2021/05/24.
//

import UIKit


class SecondViewController: UIViewController{
   
    var delegate: DataProtocol?
   private var countmodel = CountModel.init(count: 0)
    
    @IBOutlet weak var countLabel: UILabel!{
        didSet{
            countLabel.text = countmodel.count.description
        }
    }

    @IBAction func countButtun(_ sender: UIButton) {
        countmodel.count = countmodel.count + 1
        countLabel.text = countmodel.count.description
        print(countmodel)
    }
    
    
    @IBAction func addButton(_ sender: Any) {
        
        
        delegate?.tap(model: countmodel)
        print("tapしたよ")
        print(countmodel)
        self.navigationController?.popViewController(animated: true)
    }
    


    override func viewDidLoad() {
        super.viewDidLoad()
       
        }
  
      
    }
    
    
    

