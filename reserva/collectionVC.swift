//
//  collectionVC.swift
//  reserva
//
//  Created by Ali Abouelatta on 6/11/17.
//  Copyright © 2017 Ali Abouelatta. All rights reserved.
//

import UIKit

class collectionVC: UIViewController , UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var tableview: UITableView!
    
    var reserveplaces = [ReservePlace]()
    

    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        
        let r1 = ReservePlace(imageURL: "http://www.britishschoolmanila.org/staging/sites/default/files/Parcel%202%20Field_0.png", title: "Hamdan Sports Center")
        let r2 = ReservePlace(imageURL: "http://ukelite.com/wp-content/uploads/2014/07/camp-7.png", title: "AD Soccer Academy")
        let r3 = ReservePlace(imageURL: "https://bbk12e1-cdn.myschoolcdn.com/ftpimages/21/news/large_news839824_738333.png", title: "NYU Abu DHabi")
        
        let r4 = ReservePlace(imageURL: "http://www.brookfieldindoor.com/imgs/B11151_Slide06.png", title: "Musbah FC")
        
        reserveplaces.append(r1)
        reserveplaces.append(r2)
        reserveplaces.append(r3)
        reserveplaces.append(r4)

        tableview.delegate = self
        tableview.dataSource = self

        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableview.dequeueReusableCell(withIdentifier: "ReserveCell", for: indexPath) as? ReserveCell{
            
            let reservePlace = reserveplaces[indexPath.row]
            
        cell.updateUI(reservePlace: reservePlace)
            return cell
        } else {
            return UITableViewCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return reserveplaces.count
    }

    let xz = ""
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "detailsg", sender: xz)
    }


}
