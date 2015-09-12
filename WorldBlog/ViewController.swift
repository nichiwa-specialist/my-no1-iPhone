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

    var mapView : MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        // MapView生成
        mapView = MKMapView()
        
        mapView.frame = self.view.bounds

        mapView.delegate = self
        
        // 緯度と経度の設定
        let myLat: CLLocationDegrees = 34.66806
        let myLon: CLLocationDegrees = 135.501122
        let myCoordinate: CLLocationCoordinate2D = CLLocationCoordinate2DMake(myLat, myLon)
        
        // 尺度を設定
        let myLatDist: CLLocationDistance = 0.02
        let myLonDist: CLLocationDistance = 0.02
        let myRegion: MKCoordinateRegion = MKCoordinateRegionMakeWithDistance(myCoordinate, myLatDist, myLonDist)
        mapView.setRegion(myRegion, animated: true)
        
        // 表示タイプ設定
        //mapView.mapType = MKMapType.Standard
        //mapView.mapType = MKMapType.Satellite
        mapView.mapType = MKMapType.Hybrid
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

