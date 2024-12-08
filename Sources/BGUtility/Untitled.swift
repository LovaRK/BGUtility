//
//  Untitled.swift
//  BGUtility
//
//  Created by Saanvika on 08/12/24.
//

public extension Array {
    subscript (safe index: Int) -> Element? {
        return indices ~= index ? self[index] : nil
    }
}
