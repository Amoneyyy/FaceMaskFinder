//
//  ProductsTableViewController.swift
//  FaceMaskFinder
//
//  Created by Lucia Holzheu on 7/20/17.
//  Copyright © 2017 Lucia Holzheu. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {
    
    var sorter: Sorter? 
    
    let products = [
        "Biomiracle Anti-aging and Moisturizing Face Mask Sheets" : [
            "Producer" : "Biomiracle",
            "Description" : " After 20 minutes of use, remove this Vitamin C sheet mask to reveal brighter, dewy skin. You’re sure to agree with the many happy reviewers that have already claimed this new product a 'must-have'. ---- Reduces fine lines and wrinkles, brightens skin texture; Firming affect; Made from the finest collagen essence; Easy application in just 20 minutes. Price $7",
            "Price" : "7",
            "Image" : #imageLiteral(resourceName: "biomiracleImage")
        ],
        "Garnier Skinactive Clean and Pore Purifying 2-in-1 Clay Cleanser and Mask" : [
            "Producer" : "Garnier",
            "Description" : "Get two products in one when you purchase the new clay cleanser and mask by Garnier that incorporates charcoal and kaolin to remove surface impurities while unclogging pores.; Daily cleanser & detox mask in 1 product; Kaolin clay + charcoal help purify skin. Price $5",
            "Price" : "5",
            "Image" : #imageLiteral(resourceName: "garnierImage")
        ],
        "Ultra Repair Instant Oatmeal Mask" : [
            "Producer" : "First Aid Beauty",
            "Description" : "With oatmeal to soothe skin and shea butter to nourish it, Ultra Repair Instant Oatmeal Mask from First Aid Beauty is perfect for sensitive complexions. To top it off, there are no parabens, sulfates, or synthetic fragrances and dyes. Price $22",
            "Price" : "$22",
            "Image" : #imageLiteral(resourceName: "ultraImage")
        ]
    ]
    
    var personalizedResults: [String] = []
    //var personalizedResults = ["Mud Mask", "Clay Mask", "Charcoal Mask"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()
        personalizedResults = sorter!.recommend()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return personalizedResults.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "maskID", for: indexPath)

        cell.textLabel?.text = personalizedResults[indexPath.row]
        // Configure the cell...

        return cell
    }
    
    
    

    
    

    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mySegue" {
            if let nextViewController = segue.destination as? DetailViewController {
                
                let indexPath = self.tableView.indexPathForSelectedRow
                
                let selectedMask = personalizedResults[(indexPath?.row)!]
                //nextViewController.testingLabel.text = "testing"
                nextViewController.view.backgroundColor = UIColor.init(red: 255/255, green: 223/255, blue: 225/255, alpha: 1/1)
                nextViewController.maskTitle.text = selectedMask
                nextViewController.maskDetails.text = products[selectedMask]?["Description"] as! String ?? "No description found"
                nextViewController.maskImage.image = products[selectedMask]?["Image"] as! UIImage ?? #imageLiteral(resourceName: "potatoImage")
                
            }
        }
        
    }
    

}



