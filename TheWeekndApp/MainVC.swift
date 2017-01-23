//
//  ViewController.swift
//  TheWeekndApp
//
//  Created by Steven Santiago on 1/21/17.
//  Copyright © 2017 Steven Santiago. All rights reserved.
//

import UIKit

class MainVC: UIViewController , UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var weeknds = [Weeknd]()
    
        

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // below is the data for each cell
       
        let w1 = Weeknd(imageURL: "http://images.complex.com/complex/images/c_limit,w_680/f_auto,fl_lossy,pg_1,q_auto/otl75bbvf9mkwaf6yirt/the-weeknd", videoURL: "<iframe width=\"375\" height=\"211\" src=\"https://www.youtube.com/embed/CW5oGRx9CLM\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "False Alarm")
        
        let w2 = Weeknd(imageURL: "http://stereoday.com/wp-content/uploads/2016/11/the-weeknd-party-monster.jpg", videoURL: "<iframe width=\"375\" height=\"211\" src=\"https://www.youtube.com/embed/diW6jXhLE0E\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Party Monster")
        
        let w3 = Weeknd(imageURL: "http://earmilk.com/wp-content/uploads/2016/11/the-weeknd-starboy.png", videoURL: "<iframe width=\"375\" height=\"211\" src=\"https://www.youtube.com/embed/34Na4j8AVgA\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Starboy")
        
        let w4 = Weeknd(imageURL: "http://static.stereogum.com/uploads/2016/11/15048094_1158911860862665_5142326191306309632_n-1479438630-640x640.jpg", videoURL: "<iframe width=\"375\" height=\"211\" src=\"https://www.youtube.com/embed/4Kx-ke9RKww\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "I Feel It Coming")
        
        let w5 = Weeknd(imageURL: "http://www.rap-up.com/wp-content/uploads/2015/06/weeknd-cfmf.jpg", videoURL: "<iframe width=\"375\" height=\"211\" src=\"https://www.youtube.com/embed/KEI4qSrkPAs\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Can't Feel My Face")
        //let w5 = Weeknd(imageURL: "http://apentatonixchristmas.ptxofficial.com/images/promo.png", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/qJ_MGWio-vc?list=PL1hsObW78OZHyDYiQnlgIq3FUBxklTbRc\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Little Drummer Boy")

        // appending to the array of cell info type Weeknd
        weeknds.append(w1)
        weeknds.append(w2)
        weeknds.append(w3)
        weeknds.append(w4)
        weeknds.append(w5)

        // needed in order to call the tableview functions below 
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "TheWeekndCell", for: indexPath) as? TheWeekndCell {
            let weeknd = weeknds[indexPath.row] // grabs cell numberin table view that was clicked on
            cell.upDateUI(weeknd: weeknd) // updates that cell with correct info
            
            return cell
        } else { //in case it fails
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weeknds.count // will display this number of cells in table
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let weeknd = weeknds[indexPath.row]
        performSegue(withIdentifier: "VideoVC", sender: weeknd)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoVC {
            if let weeknd = sender as? Weeknd {
                destination.weeknd =  weeknd
            }
        }
    }



}

