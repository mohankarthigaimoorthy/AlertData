//
//  ViewController.swift
//  dataStruct
//
//  Created by Mohan K on 18/02/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var companyNameTxt: TextfieldDesign!
    var company = CompanyData()
    var comName = ""

    override func viewDidLoad() {
        super.viewDidLoad()

    }


    @IBAction func compnyBtnPress(_ sender: Any)
    {
        if companyNameTxt.text?.count == 0
        {
            Alert.showAlert(on: self, with: "Required", message: "Please enter your company name")
        }
        else
        {
            comName = companyNameTxt.text!
            company.setData(name: comName)
            print("\(comName)===\(company.companyName!)")


            let vc = storyboard?.instantiateViewController(withIdentifier: "oneViewController")  as! oneViewController
            navigationController?.pushViewController(vc, animated: true)
        }
       }

}

