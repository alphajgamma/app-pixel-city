//
//  PopVC.swift
//  pixel-city
//
//  Created by Andrew Greenough on 30/08/2017.
//  Copyright © 2017 Andrew Greenough. All rights reserved.
//

import UIKit

class PopVC: UIViewController, UIGestureRecognizerDelegate {
    
    // Outlets
    @IBOutlet weak var photoTitleLbl: UILabel!
    @IBOutlet weak var popImageView: UIImageView!
    
    var passedImage: UIImage!
    var passedTitle: String!
    
    func initData(forImage image: UIImage, withTitle title: String) {
        self.passedImage = image
        self.passedTitle = title
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popImageView.image = passedImage
        photoTitleLbl.text = passedTitle
        addDoubleTap()
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
