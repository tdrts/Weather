//
//  ChangeCityViewController.swift
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
        
        
        if changeCityTextField.text!.isEmpty {
            
            print("Nimic scris")
            
            let alert = UIAlertController(title: "", message: "Introdu numele orașului", preferredStyle: .alert)
            
            
            let closeAlert  = UIAlertAction(title: "Închide", style: .default, handler: nil)
            
            alert.addAction(closeAlert)
            
            present(alert, animated: true, completion: nil)
            
        } else
        
        {
            let cityName = changeCityTextField.text!
        
        delegate?.userAddedANewCityName(city: cityName)
        
            self.dismiss(animated: true, completion: nil)
            
        }
        
        
    }
    
    @IBAction func backButtonPressed(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
