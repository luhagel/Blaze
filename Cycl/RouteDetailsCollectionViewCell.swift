//
//  RouteCollectionViewCell.swift
//  CollectionView
//
//  Created by Miriam Hendler on 12/12/16.
//  Copyright © 2016 Miriam Hendler. All rights reserved.
//

import UIKit
import MapKit

class RouteDetailsCollectionViewCell: UICollectionViewCell {
    
    var mapViewController: MapViewController?
    
    @IBOutlet weak var timeToDest: UILabel!
    
    @IBOutlet weak var etaLabel: UILabel!
    
    @IBOutlet weak var totalElevationLabel: UILabel!
    var elevationResults: [[String: Int]]!
    var destinationAddress: String!
    
    
    
    @IBAction func navigateButtonPressed(_ sender: Any) {
        
        
       /* SENDS USER TO GOOGLE MAPS
         
        let location = mapViewController?.destinationDetails?.location?.coordinate
        if (UIApplication.shared.canOpenURL(URL(string:"comgooglemaps://")!)) {
            // UIApplication.shared.open(<#T##url: URL##URL#>, options: <#T##[String : Any]#>, completionHandler: <#T##((Bool) -> Void)?##((Bool) -> Void)?##(Bool) -> Void#>)
            
            UIApplication.shared.open(URL(string:
                "comgooglemaps://?saddr=&daddr=\(location!.latitude),\(location!.longitude)&directionsmode=biking&routeIndex=3")!)
        } else {
            NSLog("Can't use comgooglemaps://");
            }
       */
    }
    
    
    
    @IBAction func graphViewButtonPressed(_ sender: Any) {
        mapViewController?.graphView.isHidden = false
        mapViewController?.createElevationGraph(elevationResults: elevationResults)
        mapViewController?.view.bringSubview(toFront: (mapViewController?.graphView)!)
    }
}
