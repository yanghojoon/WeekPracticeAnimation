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
        UIView.animateKeyframes(withDuration: 0.1, delay: 0.0, options: .repeat) {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.5) {
                self.yagom.center = CGPoint(x: self.yagom.center.x - 5, y: self.yagom.center.y)
//                self.yagom.transform = CGAffineTransform(translationX: self.yagom.center.x - 50, y: self.yagom.center.y)
            }
            UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.5) {
                self.yagom.center = CGPoint(x: self.yagom.center.x + 10, y: self.yagom.center.y)
            }
        } completion: { finished in
            print("에러를 만난 야곰이다~")
        }

    }
    
    @IBAction func touchUpBuyMac(_ sender: UIButton) {
        UIView.animateKeyframes(withDuration: 1, delay: 0, options: .repeat) {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.5) {
                self.yagom.transform = CGAffineTransform(scaleX: 1.3, y: 0.8)
            }
            UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.5) {
                self.yagom.transform = CGAffineTransform(scaleX: 0.8, y: 1.3)
            }
        } completion: { finished in
            print("맥북을 사고 신난 야곰")
        }

    }
    
    @IBAction func touchUpResetButton(_ sender: Any) {
        yagom.layer.removeAllAnimations()
        self.yagom.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
    }
}

