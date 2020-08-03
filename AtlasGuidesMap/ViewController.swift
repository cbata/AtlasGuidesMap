//
//  ViewController.swift
//  AtlasGuidesMap
//
//  Created by Chris Bata on 7/30/20.
//  Copyright © 2020 Chris Bata. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
    @IBOutlet weak var mapView: MKMapView!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.delegate = self

        mapView.register(CircleAnnotationView.self, forAnnotationViewWithReuseIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier)
    }
    
    @IBAction func createAnnotation(_ sender: UILongPressGestureRecognizer) {
        if sender.state == .ended {
            let point = sender.location(in: mapView)
            let coordinate = mapView.convert(point, toCoordinateFrom: mapView)
            let annotation = CircleAnnotation(coordinate: coordinate)
            mapView.addAnnotation(annotation)
        }
    }
        
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        let circleImage = UIImage(systemName:"circlebadge.fill")?.withTintColorWorkaround(.blue)
        view.image = circleImage

    }
    
    func mapView(_ mapView: MKMapView, didDeselect view: MKAnnotationView) {
        let circleImage = UIImage(systemName:"circlebadge.fill")?.withTintColorWorkaround(.red)
        view.image = circleImage
    }

}

