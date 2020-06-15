//
//  common.swift
//  signin
//
//  Created by 박상신 on 2020/06/15.
//  Copyright © 2020 박상신. All rights reserved.
//

import UIKit

extension Dictionary {
    var queryString: String {
        var output = ""
        for (key, value) in self {
            output = output + "\(key)=\(value)&"
        }
        output = String(output.dropLast())
        return output
    }
}
