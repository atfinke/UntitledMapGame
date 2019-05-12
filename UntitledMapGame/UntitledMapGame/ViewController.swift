//
//  ViewController.swift
//  UntitledMapGame
//
//  Created by Andrew Finke on 3/15/19.
//  Copyright © 2019 Andrew Finke. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    var size = 10
    override func viewDidLoad() {
        super.viewDidLoad()

        let mapView = MKMapView(frame: view.bounds)
        mapView.mapType = .satellite
        mapView.delegate = self
        view.addSubview(mapView)

        Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { (_) in
            DispatchQueue.main.async {
                self.size *= 2
                let location = CLLocationCoordinate2D(latitude: 28.3852, longitude: -81.5639)
                let region = MKCoordinateRegion(center: location,
                                                latitudinalMeters: CLLocationDistance(exactly: self.size)!,
                                                longitudinalMeters: CLLocationDistance(exactly: self.size)!)

                mapView.setRegion(mapView.regionThatFits(region), animated: true)
//                mapView.setCamera(MKMapCamera, animated: <#T##Bool#>)
            }
        }

        // Do any additional setup after loading the view.
    }


    func mapViewDidFinishLoadingMap(_ mapView: MKMapView) {
        print(#function)
    }


    func mapViewWillStartLoadingMap(_ mapView: MKMapView) {
        print(#function)
    }
    func mapViewWillStartRenderingMap(_ mapView: MKMapView) {
        print(#function)
    }
    func mapViewDidFinishRenderingMap(_ mapView: MKMapView, fullyRendered: Bool) {
        print(#function)
    }
    

}

