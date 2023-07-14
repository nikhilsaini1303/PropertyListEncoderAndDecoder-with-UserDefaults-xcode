//
//  CustomerDetails.swift
//  PropertyListEncoderAndDecoder with UserDefaults
//
//  Created by Nikhil Saini on 20/04/23.
//

import Foundation

class CustomerDetail: Codable {
    var cName: String?
    var cAge: Int?
    var cCity: String?
    var cContact: String?
    
    init(cName: String? = "", cAge: Int? = 0, cCity: String? = "", cContact: String? = "") {
        self.cName = cName
        self.cAge = cAge
        self.cCity = cCity
        self.cContact = cContact
    }
}
