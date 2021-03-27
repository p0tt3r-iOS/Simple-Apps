//
//  ViewController.swift
//  Yutnori
//
//  Created by 하동훈 on 2021/03/26.
//

import UIKit

class ViewController: UIViewController {
    
    let yutList: [UIImage] = [#imageLiteral(resourceName: "Yut"), #imageLiteral(resourceName: "YutBack"), #imageLiteral(resourceName: "BackDo")]
    var imageViews: [UIImageView] = []

    @IBOutlet weak var YutTextField: UILabel!
    
    @IBOutlet weak var YutFirst: UIImageView!
    @IBOutlet weak var YutSecond: UIImageView!
    @IBOutlet weak var YutThird: UIImageView!
    @IBOutlet weak var YutFourth: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageViews.append(YutFirst)
        imageViews.append(YutSecond)
        imageViews.append(YutThird)
        imageViews.append(YutFourth)
    }

    @IBAction func throwButtonPressed(_ sender: UIButton) {
        
        YutTextField.text = throwYut()

    }

    func throwYut() -> String {
        var yutList = self.yutList
        
        var countBack = 0
        var count = 0
        
        for imageView in imageViews {
            let yut = yutList.randomElement()
            
            imageView.image = yut
            
            if yut == yutList[0] {
                continue
            } else if yut == yutList[1] {
                count += 1
            } else {
                yutList.removeLast()
                count += 1
                countBack += 1
            }
        }
        
        if count == 1 && countBack == 1 {
            return "빽도"
        } else if count == 1 {
            return "도"
        } else if count == 2 {
            return "개"
        } else if count == 3 {
            return "걸"
        } else if count == 4 {
            return "윷"
        } else {
            return "모"
        }
    }
    
}

