//
//  detailViewController.swift
//  Hackwich six
//
//  Created by Christian Cimafranca on 11/1/22.
//  Copyright © 2022 Charisse Cimafranca. All rights reserved.
//

import UIKit

class detailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    var imagePass: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let imageName = imagePass {imageView.image = UIImage(named: imageName)}
        
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
