//
//  CreateViewController.swift
//  Yujincho
//
//  Created by shin on 2018/10/06.
//  Copyright © 2018年 nishun0419. All rights reserved.
//

import UIKit

class CreateViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let container = UIView()
        container.frame = CGRect(x:0,y:0,width:self.view.bounds.width,height:self.view.bounds.height)
        let backimage = UIImage(named: "pepar.jpg")
        container.backgroundColor = UIColor(patternImage: backimage!)
        let myLabel = UILabel()
        myLabel.text = "hogehogeさん"
        myLabel.frame = CGRect(x: 50, y: 50, width: 250, height: 250)
        myLabel.textAlignment = .center
        self.view.addSubview(container)
        self.view.addSubview(myLabel)

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
