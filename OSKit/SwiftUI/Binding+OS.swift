//
//  Binding+OS.swift
//  OSKit
//
//  Created by Brody Robertson on 7/14/21.
//  Copyright © 2020 Outside Source. All rights reserved.
//

import SwiftUI

@available(iOS 13.0, *)
func ??<T>(lhs: Binding<Optional<T>>, rhs: T) -> Binding<T> {
    
    Binding(
        get: { lhs.wrappedValue ?? rhs },
        set: { lhs.wrappedValue = $0 }
    )
    
}
