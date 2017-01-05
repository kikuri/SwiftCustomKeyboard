//
//  FirstTableViewController.swift
//  SwiftCustomImageKeyboard1
//
//  Created by kikuchi wataru on 2017/01/05.
//  Copyright © 2017年 kikuchi wataru. All rights reserved.
//

import UIKit

class FirstTableViewController: UITableViewController {
    
    var imageView:UIImageView = UIImageView()
    
    var imageArray:[String] = ["image1.jpg","image2.jpg","image3.jpg","image4.jpg","image5.jpg","image6.jpg","image7.jpg","image8.jpg","image9.jpg","image10.jpg","image11.jpg",]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return imageArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        imageView = cell.contentView.viewWithTag(1) as! UIImageView
        
        imageView.image = UIImage(named: imageArray[indexPath.row])


        return cell
    }
 

}
