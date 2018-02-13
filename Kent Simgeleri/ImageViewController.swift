//
//  ImageViewController.swift
//  Kent Simgeleri
//
//  Created by Mert Ahmet Yiğit on 13.02.2018.
//  Copyright © 2018 Mert Yiğit. All rights reserved.
//

import UIKit




class ImageViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var detailText: UITextView!
    
    var kentIsim = ""
    var kentResim = UIImage()
    var kentDetay = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       imageView.image = kentResim
        nameLabel.text = kentIsim
        detailText.text = kentDetay
        
        
    }

  
    


}
