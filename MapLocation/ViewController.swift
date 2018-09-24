//
//  ViewController.swift
//  MapLocation
//
//  Created by Kub on 14.09.2018.
//  Copyright © 2018 Kub. All rights reserved.
//

import UIKit
import  MapKit
import  CoreLocation


class ViewController: UIViewController {
 
    @IBOutlet weak var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //koordinat bilgisi
        var location = CLLocationCoordinate2DMake(41.043999, 29.002001)
        var span=MKCoordinateSpanMake(0.003,0.003)
        var region=MKCoordinateRegion(center: location, span: span)
        map.setRegion(region, animated: true)
        
        let aciklama=MKPointAnnotation()
        aciklama.coordinate=location
        aciklama.title="İstanbul"
        aciklama.subtitle="Beşiktaş"
        map.addAnnotation(aciklama)
        //haritada yer etiketleme

    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

