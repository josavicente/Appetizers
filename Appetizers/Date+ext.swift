//
//  Date=ext.swift
//  Appetizers
//
//  Created by Josafat Vicente Pérez on 31/5/22.
//

import Foundation


extension Date {
    var eighteenYearsAgo : Date {
        Calendar.current.date(byAdding: .year, value: -18, to: Date())!
    }
    var oneHundredYearsAgo: Date {
        Calendar.current.date(byAdding: .year, value: -110, to: Date())!
    }
}
