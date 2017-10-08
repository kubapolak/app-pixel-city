//
//  popVC.swift
//  pixel-city
//
//  Created by Mac on 10/7/17.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit

class PopVC: UIViewController, UIGestureRecognizerDelegate {

    //Outlets
    @IBOutlet weak var popImageView: UIImageView!
    
    @IBOutlet weak var titleLbl: UILabel!
    
    var passedImage: UIImage!
    var passedTitle: String!
    
    func initData(forImage image: UIImage, Title title: String) {
        self.passedImage = image
        self.passedTitle = title
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popImageView.image = passedImage
        titleLbl.text = passedTitle.lowercased()
        addDoubleTap()
        // Do any additional setup after loading the view.
    }
    
    func addDoubleTap() {
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(screenWasDoubleTapped))
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
    }
    
    @objc func screenWasDoubleTapped() {
        dismiss(animated: true, completion: nil)
    }

}
