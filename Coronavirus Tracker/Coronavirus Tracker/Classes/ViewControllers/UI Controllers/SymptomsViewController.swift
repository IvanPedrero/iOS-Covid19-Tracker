//
//  SymptomsViewController.swift
//  Coronavirus Tracker
//
//  Created by Ivan Pedrero on 03/08/20.
//  Copyright © 2020 Ivan Pedrero. All rights reserved.
//

import UIKit
import Lottie

class SymptomsViewController: UIViewController {
    
    @IBOutlet weak var lottieAnimationView1: UIView!
    @IBOutlet weak var lottieAnimationView2: UIView!
    @IBOutlet weak var lottieAnimationView3: UIView!
    
    
    @IBOutlet weak var topContainerView: UIView!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var leastContainerView: UIView!
    @IBOutlet weak var seriousContainerView: UIView!
    @IBOutlet weak var whoButton: UIButton!
    @IBOutlet weak var chatbotButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        styleContainerViews()
        startAnimations()
    }
    
    func styleContainerViews(){
        topContainerView.stylizeContainerView(roundBorder: false)
        leastContainerView.stylizeContainerView()
        seriousContainerView.stylizeContainerView()
        backButton.stylizeButton()
        whoButton.stylizeButton()
        chatbotButton.stylizeButton()
    }
    
    func startAnimations(){
        var animationView = AnimationView()
        animationView = .init(name: "fever")
        animationView.frame = lottieAnimationView1.bounds
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.animationSpeed = 1.0
        lottieAnimationView1.addSubview(animationView)
        animationView.play()
        
        var animationView2 = AnimationView()
        animationView2 = .init(name: "tired")
        animationView2.frame = lottieAnimationView2.bounds
        animationView2.contentMode = .scaleAspectFit
        animationView2.loopMode = .loop
        animationView2.animationSpeed = 1.0
        lottieAnimationView2.addSubview(animationView2)
        animationView2.play()
        
        var animationView3 = AnimationView()
        animationView3 = .init(name: "cough")
        animationView3.frame = lottieAnimationView3.bounds
        animationView3.contentMode = .scaleAspectFit
        animationView3.loopMode = .loop
        animationView3.animationSpeed = 1.0
        lottieAnimationView3.addSubview(animationView3)
        animationView3.play()
    }
    
    @IBAction func backAction(_ sender: Any) {
        dismiss (animated: true, completion: nil)
    }
    
    @IBAction func openWhoSymptoms(_ sender: Any) {
        Requests.openWhoSymptoms()
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
