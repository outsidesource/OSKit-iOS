//
//  Service+OS.swift
//  OSKit
//
//  Created by Brody Robertson.
//  Copyright © 2018 Outside Source. All rights reserved.
//

import RxBluetoothKit

extension Service: CustomStringConvertible {
    
    public var description: String {
        return self.uuid.description
    }
    
}
