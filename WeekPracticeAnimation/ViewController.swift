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
//        UIView.animate(withDuration: 5, delay: 0.0, options: [.repeat, .autoreverse]) {
//            self.yagom.center = CGPoint(x: self.yagom.center.x - 50, y: self.yagom.center.y)
//        } completion: { finished in
//            print(self.yagom.center)
//            print("에러를 만난 야곰이다~")
//        }
        
        UIView.animateKeyframes(withDuration: 5, delay: 0.0, options: .repeat) {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.5) {
                self.yagom.center = CGPoint(x: self.yagom.center.x - 50, y: self.yagom.center.y)
            }
            UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.5) {
                self.yagom.center = CGPoint(x: self.yagom.center.x + 100, y: self.yagom.center.y)
            }
        } completion: { finished in
            print("에러를 만난 야곰이다~")
        }

    }
    
    @IBAction func touchUpResetButton(_ sender: Any) {
        yagom.layer.removeAllAnimations()
    }
}

