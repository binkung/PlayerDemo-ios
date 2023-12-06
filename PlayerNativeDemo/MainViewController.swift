//
//  ViewController.swift
//
//  Created by 백승훈 on 2023/08/22.
//

import UIKit
import PlayerNativeSDK
import AVFoundation

class MainViewController : UIViewController {
    @IBAction func movePage(_ sender: Any) {
        guard let nextVC = self.storyboard?.instantiateViewController(identifier: "VodViewController") as? VodViewController else { return }
                
        nextVC.modalPresentationStyle = .overFullScreen
                
        self.present(nextVC, animated: true, completion: nil)
    }
    @IBAction func livePageMove(_ sender: Any) {
        guard let nextVC = self.storyboard?.instantiateViewController(identifier: "LiveViewController") as? LiveViewController else { return }
                
        nextVC.modalPresentationStyle = .overFullScreen
                
        self.present(nextVC, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("?????")
    }
}

