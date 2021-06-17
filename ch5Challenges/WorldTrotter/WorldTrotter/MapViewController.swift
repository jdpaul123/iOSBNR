//
//  MapViewController.swift
//  WorldTrotter
//
//  Created by Jonathan Paul on 4/11/21.
//
import UIKit
import MapKit

class MapViewController: UIViewController {
    
    var mapView: MKMapView!
    
    override func loadView() {
        // Create a map view
        mapView = MKMapView()
        mapView.pointOfInterestFilter = MKPointOfInterestFilter.excludingAll
        
        // Set it as *the* view of this view controller
        view = mapView
        
        let segmentedControl = UISegmentedControl(items: ["Standard", "Hybrid", "Satellite"])
        segmentedControl.backgroundColor = UIColor.systemBackground
        segmentedControl.selectedSegmentIndex = 0
        
        segmentedControl.addTarget(self, action: #selector(mapTypeChanged(_:)), for: .valueChanged)
        
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentedControl)
        
        let topConstraint = segmentedControl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8)
        
        let margins = view.layoutMarginsGuide
        let leadingConstraint = segmentedControl.leadingAnchor.constraint(equalTo: margins.leadingAnchor)
        let trailingConstraint = segmentedControl.trailingAnchor.constraint(equalTo: margins.trailingAnchor)
        
        topConstraint.isActive = true
        leadingConstraint.isActive = true
        trailingConstraint.isActive = true
        
        // Bronze challenge adding text and a switch button
        let poiTag = UILabel()
        poiTag.frame = CGRect(x: 0, y: 0, width: 150, height: 20)
        poiTag.text = "Points of Interest"
        poiTag.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(poiTag)
        let poiTop = poiTag.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor)
        let poiLeading = poiTag.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 10)
        
        poiLeading.isActive = true
        poiTop.isActive = true
        
        let poiSwitch = UISwitch(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        poiSwitch.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(poiSwitch)
        let switchTop = poiSwitch.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor)
        let switchLeading = poiSwitch.leadingAnchor.constraint(equalTo: poiTag.trailingAnchor)
        
        switchTop.isActive = true
        switchLeading.isActive = true
        
        poiSwitch.addTarget(self, action: #selector(switchValueDidChange(_:)), for: .valueChanged)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("MapViewController loaded its view.")
    }
    
    @objc func mapTypeChanged(_ segControl: UISegmentedControl) {
        switch segControl.selectedSegmentIndex {
        case 0:
            mapView.mapType = .standard
        case 1:
            mapView.mapType = .hybrid
        case 2:
            mapView.mapType = .satellite
        default:
            break
        }
    }
    
    @objc func switchValueDidChange(_ sender: UISwitch) {
        if sender.isOn {
            mapView.pointOfInterestFilter = MKPointOfInterestFilter.includingAll
        } else {
            mapView.pointOfInterestFilter = MKPointOfInterestFilter.excludingAll
        }
    }
}
