//
//  FirstViewController.swift
//  protocol-practice
//
//  Created by 木元健太郎 on 2021/05/24.
//

import UIKit



class FirstViewController: UIViewController {
    
  
    
    @IBOutlet weak var label: UILabel!{
        didSet{
            label.text = "0"
        }
    }
    
    @IBAction func nextButton(_ sender: UIButton) {
    
            let secondStoryboard = UIStoryboard(name: "Second", bundle: nil)
            let secondVC = secondStoryboard.instantiateInitialViewController() as!SecondViewController
            
            secondVC.delegate = self
            let nav = self.navigationController!
            nav.pushViewController(secondVC, animated: true)
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
 }

extension FirstViewController:DataProtocol {
    func tap(model: CountModel){
        label.text = model.count.description
        
    }
}
