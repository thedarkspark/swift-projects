//
//  MPCHandler.swift
//  Tic Tac Toe
//
//  Created by Bernard Huff on 7/22/17.
//  Copyright © 2017 Bernard Huff. All rights reserved.
//
//  On youtube the marker is about 16:30 when I left off.

import UIKit

import MultipeerConnectivity

class MPCHandler: NSObject {

    var peerID:MCPeerID!
    
    var session:MCSession!

    var browser:MCBrowserViewController!
    
    var advertiser:MCAdvertiserAssistant? = nil
    
    
    
}
