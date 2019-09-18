//
//  String+Extension.swift
//  Swift Error Handling - Do, Try, Catch
//
//  Created by Nahin Ahmed on 18.09.19.
//  Copyright © 2019 NAhmed. All rights reserved.
//

import Foundation

extension String {
    var isValidEmail: Bool {
        let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: self)
    }
}


