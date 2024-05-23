//
//  AppConstants.swift
//  KupujemProdajemDEMO
//
//  Created by Petar Sakotic on 5/22/24.
//

import UIKit

/// Application constants
enum AppConstants {
    
    /// Base URL..
    static var baseUrl: String {
        return "https://images.kupujemprodajem.com"
    }
    
    /// AppTheme set all colors and images that we will use on application
    enum AppTheme {
        
        static var backgroundImage: UIImage { return UIImage(named: "camera")?.alpha(0.3) ?? UIImage() }
        
        static var backgroundColor: UIColor {
            return UIColor(named: "BackgroundColor")!
        }
        
        static var bodyTextColor: UIColor {
            return UIColor(named: "BodyTextColor")!
        }
        
        static var redColor: UIColor {
            return UIColor(named: "RedColor")!
        }
        
        static var titleTextColor: UIColor {
            return UIColor(named: "TitleTextColor")!
        }
        
        static var textColor: UIColor {
            return UIColor.black
        }
        
        static var whiteBackground: UIColor {
            return UIColor.white
        }
        
        static func prepareGlobalAppereance() {
            
        }
    }
    
}
