//
//  MainViewController.swift
//  NCPlayerNativeDemo
//
//  Created by 백승훈 on 2023/09/19.
//

import Foundation
import UIKit
import PlayerNativeSDK
import AVFoundation

class VodViewController: UIViewController {
    
    @IBOutlet weak var NCPlayerView: PlayerNative!
    var viewTranslation = CGPoint(x: 0, y: 0)
    var viewVelocity = CGPoint(x: 0, y: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        swipeRecognizer()
        NCPlayerView?.play(playOption: """
             {
                "playlist":[
                    {
                        "file":"https://fsxikvammvwv14470411.cdn.ntruss.com/hls/9N5-iJ4f9tdzE6D708PTmg__/vod/j5IXBfIJ83893893_,1080,720,480,p.mp4.smil/master.m3u8",
                        "poster":"https://wnfosehmzhuc12665447.cdn.ntruss.com/thumb/sample_thumb.png?type=m&w=1024&h=760&ttype=jpg",
                        "description":{
                            "title":"네이버클라우드 테스트 영상1111",
                            "created_at":"2022.07.13",
                            "profile_name":"네이버클라우드",
                            "profile_image":"https://nnbkegvqsbcu5297614.cdn.ntruss.com/profile/202208/d127c8db642716d84b3201f1d152e52a.png"
                        },
                    },
                     {
                         "file":"https://fsxikvammvwv14470411.cdn.ntruss.com/hls/9N5-iJ4f9tdzE6D708PTmg__/vod/j5IXBfIJ83893893_,1080,720,480,p.mp4.smil/master.m3u8",
                         "poster":"https://wnfosehmzhuc12665447.cdn.ntruss.com/thumb/sample_thumb.png?type=m&w=1024&h=760&ttype=jpg",
                         "description":{
                             "title":"네이버클라우드 테스트 영상",
                             "created_at":"2022.07.13",
                             "profile_name":"네이버클라우드",
                             "profile_image":"https://nnbkegvqsbcu5297614.cdn.ntruss.com/profile/202208/d127c8db642716d84b3201f1d152e52a.png"
                         },
                     },
                ],
             
                 "autostart":true,
                 "muted":true,
                 "keyboardShortcut":true,
                 "controls":true,
                 "controlBtn":{
                     "play":false,
                     "fullscreen":true,
                     "volume":true,
                     "times":false,
                     "pictureInPicture":true,
                     "setting":true,
                 },
                 
                 "controlActiveTime":3000,
                 "startMutedInfoNotVisible":false,
                 "aspectRatio":"2/1",
                 "objectFit":"contain",
                 "seekingPreview":true,
                 "disableAutoPause":false,
                 "descriptionNotVisible":true,
                 "lowLatencyMode": false,
                 "backgroundPlayback": true,
                 "rotateFullscreen": false,

                }

        """)
        
    }
    
    func swipeRecognizer() {
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(self.respondToSwipeGesture(_:)))
        swipeRight.direction = UISwipeGestureRecognizer.Direction.right
        self.view.addGestureRecognizer(swipeRight)
        
    }
    
    @objc func respondToSwipeGesture(_ gesture: UIGestureRecognizer){
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            switch swipeGesture.direction{
            case UISwipeGestureRecognizer.Direction.right:
                // 스와이프 시, 원하는 기능 구현.
                NCPlayerView.disconnection()
                self.dismiss(animated: true, completion: nil)
            default: break
            }
        }
    }

}
