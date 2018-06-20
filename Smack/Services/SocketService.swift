//
//  SocketService.swift
//  Smack
//
//  Created by Ella Robertson on 6/20/18.
//  Copyright © 2018 Ella Robertson. All rights reserved.
//

import Foundation
import SocketIO

class SocketService: NSObject {
    
    static let instance = SocketService()
    
    private let manager: SocketManager
    private var socket: SocketIOClient
    
    private override init() {
        
        manager = SocketManager(socketURL: URL(string: BASE_URL)!, config: [.log(true), .compress])
        socket = manager.defaultSocket
        
        super.init()
    }
    
    func establishConnection() {
        socket.connect()
    }
    
    func closeConnection() {
        socket.disconnect()
    }
    
    func addChannel(channelName: String, channelDescription: String, completion: @escaping CompletionHandler) {
        socket.emit("newChannel", channelName, channelDescription)
        completion(true)
    }
    
    func getChannel(completion: @escaping CompletionHandler) {
        socket.on("channelCreated") { (dataArray, ack) in
            guard let channelName = dataArray[0] as? String else {return}
            guard let chanDesc = dataArray[1] as? String else {return}
            guard let channelId = dataArray[2] as? String else {return}
            
            let newChannel = Channel(channelTitle: channelName, channelDescription: chanDesc, id: channelId)
            MessageService.instance.channels.append(newChannel)
            completion(true)
        }
    }
    
}
