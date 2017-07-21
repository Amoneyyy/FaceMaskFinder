//
//  ProductsTableViewController.swift
//  FaceMaskFinder
//
//  Created by Lucia Holzheu on 7/20/17.
//  Copyright © 2017 Lucia Holzheu. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {

    var skinType: String!
    
    var skinProblem: String!
    
    var recommender: Recommender?
    
    let products = [
        "mask1" : [
            "name" : "Biomiracle anti-aging and moisturizing face mask sheets",
            "Producer" : "Biomiracle",
            "Description" : " After 20 minutes of use, remove this Vitamin C sheet mask to reveal brighter, dewy skin. You’re sure to agree with the many happy reviewers that have already claimed this new product a 'must-have'. ---- Reduces fine lines and wrinkles, brightens skin texture; Firming affect; Made from the finest collagen essence; Easy application in just 20 minutes;",
            "Price" : "7"
        ],
        "mask2" : [
            "name" : "Garnier skinactive clean and pore purifying 2-in-1 clay cleanser and mask",
            "Producer" : "Garnier",
            "Description" : "Get two products in one when you purchase the new clay cleanser and mask by Garnier that incorporates charcoal and kaolin to remove surface impurities while unclogging pores.; Daily cleanser & detox mask in 1 product; Kaolin clay + charcoal help purify skin",
            "Price" : "5"
        ]
    ]
    
    var personalizedResults: [String] = []
    //var personalizedResults = ["Mud Mask", "Clay Mask", "Charcoal Mask"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()
        personalizedResults = recommender!.recommendedProducts()
        // myPrint()

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
    
    
    

    
//    func makePersonalizeList(skinType: String, skinProblem: String) {
//        if skinType == "combination" || skinType == "dry" {
//            personalizedResults.append(products["mask1"]!)
//        }
//        personalizedResults.append(products["mask2"]!)
//        if skinProblem == "acne" {
//            // universal acne
//        }
//        if skinProblem == "acne" && skinType == "oily" {
//            // solution for oily skin only.
//        }
//    }
    
    //print(products["Biomiracle anti-aging and moisturizing face mask sheets"]!["Price"]!)
    func myPrint() {
        for (key, value) in products {
        print("This is the dictionary key: \(key)")
        print("This is the value: \(value)")
            
            for (key, value) in value {
                
                print("This is the dictionary key: \(key)111111111111111111111111111")
                print("This is the value: \(value)1111111111111111111111111")
            }
            
        }
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
