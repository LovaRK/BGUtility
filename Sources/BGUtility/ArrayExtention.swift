//
//  ArrayExtention.swift
//  BGUtility
//
//  Created by Saanvika on 08/12/24.
//

public extension Array {
    subscript(safeIndex index: Int) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
