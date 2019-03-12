//
//  ChangeCityViewController.swift
//  WeatherApp
//
//

import UIKit



protocol ChangeCityDelegate {
    func userAddedANewCityName(city : String)
}


class ChangeCityViewController: UIViewController {
    
    //delegate variable
    
    var delegate : ChangeCityDelegate?
    

    @IBOutlet weak var changeCityTextField: UITextField!

    
    @IBAction func getWeatherPressed(_ sender: AnyObject) {
        
        
        
        
        let cityName = changeCityTextField.text!
        
        delegate?.userAddedANewCityName(city: cityName)
        
        self.dismiss(animated: true, completion: nil)
        
        
    }
    
    @IBAction func backButtonPressed(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
