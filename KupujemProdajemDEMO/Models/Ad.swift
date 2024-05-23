//
//  Oglas.swift
//  KupujemProdajemDEMO
//
//  Created by Petar Sakotic on 5/22/24.
//

import Foundation

class Ad: JSONSerializable, Equatable {

    //MARK: - Globals
    
    let id: Int
    let posted: String
    let location: String
    let name: String
    let price: String
    let currency: String
    let priceFixed: String
    let photo: String
    let favouriteCount: Int
    let isFollowingAd: Bool
    
    //MARK: - Init
    
    /// Default constructor
    init(id: Int, posted: String, location: String, name: String, price: String, currency: String, priceFixed: String, photo: String, favouriteCount: Int, isFollowingAd: Bool ) {
        self.id = id
        self.posted = posted
        self.location = location
        self.name = name
        self.price = price
        self.currency = currency
        self.priceFixed = priceFixed
        self.photo = photo
        self.favouriteCount = favouriteCount
        self.isFollowingAd = isFollowingAd
        
    }
    
    
    //MARK: - JSONSerializable
    
    ///JSONConstructor
    /// - Parameter dictionary: NSDictionary representing JSON response from server side or other source
    required init?(_ dictionary: NSDictionary?) {
        guard
            let dictionary     = dictionary,
            let id             = dictionary.value(forKeyPath: "ad_id") as? Int,
            let posted         = dictionary.value(forKeyPath: "posted") as? String,
            let location       = dictionary.value(forKeyPath: "location_name") as? String,
            let name           = dictionary.value(forKeyPath: "name") as? String,
            let price          = dictionary.value(forKeyPath: "price") as? String,
            let currency       = dictionary.value(forKeyPath: "currency") as? String,
            let priceFixed     = dictionary.value(forKeyPath: "price_fixed") as? String,
            let photo          = dictionary.value(forKeyPath: "photo1_tmb_300x300") as? String,
            let favouriteCount = dictionary.value(forKeyPath: "favorite_count") as? Int,
            let isFollowingAd  = dictionary.value(forKeyPath: "is_following_ad") as? Bool
        else {
            return nil
        }
           
        self.id = id
        self.posted = posted
        self.location = location
        self.name = name
        self.price = price
        self.currency = currency
        self.priceFixed = priceFixed
        self.photo = photo
        self.favouriteCount = favouriteCount
        self.isFollowingAd = isFollowingAd
        
    }
    
    var convertCurrency: String {
        return self.currency == "rsd" ? "din" : "€"
    }
    
    var fullPrice: String {
        return "\(self.price) \(convertCurrency)"
    }
    
    var idToString: String {
        return "\(self.id)"
    }
    
    
    //MARK: - Equatable
    
    static func == (lhs: Ad, rhs: Ad) -> Bool {
        return lhs.id == rhs.id
    }
}

