//
//  EmergencyViewController.swift
//  E-Police Station
//
//  Created by Apple on 26/12/23.
//

import UIKit
import MapKit


class EmergencyViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var currentLocationButton: UIButton!
    @IBAction func goToCurrentLocation(_ sender: UIButton) {
        mapView.setUserTrackingMode(.follow, animated: true)
    }
    
    @IBOutlet weak var AddMoreInformation: UITextField!
    @IBOutlet weak var CrimeTextField: UITextField!
    
    var Crime = ["Theft","accident","kidnapping","GangWar","Other"]
    let pickerView = UIPickerView()
    
    func EditTextFiled(){
        //AddMoreInformation.frame = CGRect(x: 20, y: 100, width: 300, height: 200)
        AddMoreInformation.font = UIFont.systemFont(ofSize: 20)
        AddMoreInformation.placeholder = "Enter multiline text"
        AddMoreInformation.borderStyle = .roundedRect
        AddMoreInformation.contentVerticalAlignment = .top
        AddMoreInformation.delegate = self
    
       // AddMoreInformation.numberOfLines = 0
        view.addSubview(AddMoreInformation)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pickerView.delegate = self
        self.pickerView.dataSource = self
        CrimeTextField.inputView = pickerView
        
        EditTextFiled()
        
        let initialLocation = CLLocationCoordinate2D(latitude: 22.6708, longitude: 71.5724)
        let region = MKCoordinateRegion(center: initialLocation, latitudinalMeters: 500, longitudinalMeters: 500)
        mapView.setRegion(region, animated: true)

            // Add a pin for the initial location
        let annotation = MKPointAnnotation()
       annotation.coordinate = initialLocation
        mapView.addAnnotation(annotation)
        
        mapView.delegate = self
        mapView.mapType = .satellite
        
        mapView.showsBuildings = true
        mapView.showsPointsOfInterest = true

        
        currentLocationButton.layer.cornerRadius = 8
        currentLocationButton.layer.borderWidth = 1
        currentLocationButton.layer.borderColor = UIColor.blue.cgColor
        currentLocationButton.addTarget(self, action: #selector(goToCurrentLocation(_:)), for: .touchUpInside)
        
    }
}



extension EmergencyViewController: UIPickerViewDelegate,UIPickerViewDataSource{
    
        
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
      return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Crime.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Crime[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        CrimeTextField.text = Crime[row]
        CrimeTextField.resignFirstResponder()
        
    }
    
}

extension EmergencyViewController: MKMapViewDelegate {

    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if annotation is MKUserLocation {
            return nil  // Use default view for user location
        }

        let annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: "customPin")
        annotationView.pinTintColor = .blue
        annotationView.canShowCallout = true

        // Optional: Customize the callout view with additional information
        let detailLabel = UILabel()
        detailLabel.text = "Custom Detail Text"
        annotationView.detailCalloutAccessoryView = detailLabel

        return annotationView
    }
}
