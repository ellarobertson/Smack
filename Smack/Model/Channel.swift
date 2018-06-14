//
//  Channel.swift
//  Smack
//
//  Created by Ella Robertson on 6/14/18.
//  Copyright © 2018 Ella Robertson. All rights reserved.
//

import Foundation

struct Channel : Decodable {
    public private(set) var channelTitle: String!
    public private(set) var channelDescription: String!
    public private(set) var id: String!
}
