//
//  IObjectBox.swift
//  OSKit
//
//  Created by Brody Robertson
//  Copyright © 2020 Outside Source. All rights reserved.
//

public protocol IObjectBox: AnyObject, IBox {
    associatedtype ElementType
    var element: ElementType? { get }
}

