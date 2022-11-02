//
//  ViewController.swift
//  Hackwich six
//
//  Created by Christian Cimafranca on 10/19/22.
//  Copyright © 2022 Charisse Cimafranca. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var myFriendsArray = ["Sara", "Nicole", "Grant"]
    
    var travellingArray = ["Japan", "Canada", "United Kingdom", "Italy", "South Korea"]
    
     var restaurantImageData = [String]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
    let dict = NSDictionary(contentsOfFile: path!)
        
    restaurantImageData = dict!.object(forKey: "restaurantImages") as! [String]
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return travellingArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")
        
        let text = travellingArray[indexPath.row]
        
        cell?.textLabel?.text = text
        
        return cell!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
    
        let s1 = segue.destination as! detailViewController
        let imageIndex = tableView.indexPathForSelectedRow?.row
        s1.imagePass = restaurantImageData[imageIndex!]
        
    }


}

