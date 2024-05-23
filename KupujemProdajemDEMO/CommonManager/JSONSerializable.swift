//
//  JSONSerializable.swift
//  KupujemProdajemDEMO
//
//  Created by Petar Sakotic on 5/22/24.
//

import Foundation

protocol JSONSerializable: Codable {
    
    /// JSON Constructor
    /// - Parameter dictionary: NSDictionary representing JSON response from server side or some other source
    init?(_ dictionary: NSDictionary?)
        
}
