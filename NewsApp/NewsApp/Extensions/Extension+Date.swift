//
//  Extension+Date.swift
//  NewsApp
//
//  Created by Даниил Соловьев on 31/07/2024.
//

import Foundation

extension Date {
    func converDate() -> String {
        return formatted(.dateTime.hour().minute().day().month().year())
    }
}
