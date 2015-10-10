//
//  ViewController.swift
//  WorldBlog
//
//  Created by ニチワ システム on 2015/08/08.
//  Copyright (c) 2015年 ニチワ システム. All rights reserved.
//

import UIKit
import MapKit /* MapKit frameworkをimport */

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet var mapView:MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 縮尺を設定
        mapView.setRegion(
            MKCoordinateRegion(
                center: CLLocationCoordinate2DMake(34.6693, 135.5075),
                span: MKCoordinateSpan(latitudeDelta: 0.002, longitudeDelta: 0.002)
            ),
            animated: true)

    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

