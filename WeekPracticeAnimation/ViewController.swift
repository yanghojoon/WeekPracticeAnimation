//
//  ViewController.swift
//  WeekPracticeAnimation
//
//  Created by 양호준 on 2022/02/12.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var yagom: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func touchUpMeetErrrorButton(_ sender: UIButton) {
        UIView.animate(withDuration: 0.01, delay: 0.0, options: [.repeat, .autoreverse]) {
            self.yagom.center = CGPoint(x: 155, y: 109)
        } completion: { finished in
            print(self.yagom.center)
            print("에러를 만난 야곰이다~")
        }
    }
    
    @IBAction func touchUpResetButton(_ sender: Any) {
        yagom.layer.removeAllAnimations()
    }
}

