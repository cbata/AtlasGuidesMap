//
//  CircleAnnotationView.swift
//  AtlasGuidesMap
//
//  Created by Chris Bata on 7/30/20.
//  Copyright © 2020 Chris Bata. All rights reserved.
//

import UIKit
import MapKit

class CircleAnnotationView: MKAnnotationView {
    override init(annotation: MKAnnotation?, reuseIdentifier: String?) {
        super.init(annotation: annotation, reuseIdentifier: reuseIdentifier)

        let circleImage = UIImage(systemName: "circlebadge.fill")
        circleImage?.withTintColor(.red)

        image = circleImage
        isDraggable = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
