//
//  Alert.swift
//  Swift Error Handling - Do, Try, Catch
//
//  Created by Nahin Ahmed on 18.09.19.
//  Copyright © 2019 NAhmed. All rights reserved.
//

import Foundation
import UIKit

class Alert {
    class func showBasic(title: String, message: String, vc: UIViewController) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(action)
        vc.present(alert, animated: true)
    }
}
