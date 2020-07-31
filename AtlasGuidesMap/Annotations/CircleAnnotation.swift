//
//  CircleAnnotation.swift
//  AtlasGuidesMap
//
//  Created by Chris Bata on 7/30/20.
//  Copyright © 2020 Chris Bata. All rights reserved.
//

import UIKit
import MapKit

class CircleAnnotation: NSObject, MKAnnotation {
    @objc dynamic var coordinate: CLLocationCoordinate2D

    init(coordinate: CLLocationCoordinate2D) {
        self.coordinate = coordinate
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
