//
//  ViewController.swift
//  CodeUIPractice
//
//  Created by sae hun chung on 2022/08/17.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let vc = KakaoTalkViewController()
        
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
}

