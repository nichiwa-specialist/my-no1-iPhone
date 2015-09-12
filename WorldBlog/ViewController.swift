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

        // MapView生成
//        var mapView : MKMapView = MKMapView()
//        var mapView : MKMapView = MKMapView(frame: CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height))

//        mapView.delegate = self
        
        // 緯度と経度の設定(中心位置)
        var location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(34.66806, 135.501122)
        mapView.setCenterCoordinate(location, animated: true)
        
//        let myLat: CLLocationDegrees = 34.66806
//        let myLon: CLLocationDegrees = 135.501122
//        let myCoordinate: CLLocationCoordinate2D = CLLocationCoordinate2DMake(myLat, myLon)

        // 表示領域を表すために緯度経度方向の幅を設定
//        let span : MKCoordinateSpan = MKCoordinateSpanMake(0.5, 0.5)//(latitudeDelta: 0.1, longitudeDelta: 0.1)
//        let span : MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
        
        // 縮尺を設定
        var region: MKCoordinateRegion = mapView.region
        region.center = location
        region.span.latitudeDelta = 0.02
        region.span.longitudeDelta = 0.02
        mapView.setRegion(region, animated: true)
//        let myLatDist: CLLocationDistance = 0.02
//        let myLonDist: CLLocationDistance = 0.02
//        let myRegion: MKCoordinateRegion = MKCoordinateRegionMakeWithDistance(myCoordinate, myLatDist, myLonDist)

//        mapView.setRegion(myRegion, animated: true)
//        let region :MKCoordinateRegion = MKCoordinateRegion(center: mapView.centerCoordinate, span: span)

        
        // 表示タイプ設定
        mapView.mapType = MKMapType.Standard
        //mapView.mapType = MKMapType.Satellite
        //mapView.mapType = MKMapType.Hybrid

//        mapView.region = region

//        self.view.addSubview(mapView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

