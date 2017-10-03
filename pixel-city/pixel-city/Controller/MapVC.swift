//
//  MapVC.swift
//  pixel-city
//
//  Created by Mac on 10/2/17.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit
import MapKit

class MapVC: UIViewController {

    //Outlets
    @IBOutlet weak var mapView: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
    }
    
    @IBAction func centerMapBtnWasPressed(_ sender: Any) {
    }
    
}

extension MapVC: MKMapViewDelegate {
    
}
