//
//  MapVC.swift
//  pixel-city
//
//  Created by Andrew Greenough on 29/08/2017.
//  Copyright © 2017 Andrew Greenough. All rights reserved.
//

import UIKit
import MapKit

class MapVC: UIViewController {
    
    // Outlets
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

