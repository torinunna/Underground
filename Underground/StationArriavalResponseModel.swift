//
//  StationArriavalResponseModel.swift
//  Underground
//
//  Created by YUJIN KWON on 2022/11/06.
//

import Foundation

struct StationArriavalResponseModel: Decodable {
    
    var realtimeArrivalList: [RealTimeArriaval] = []
    
    struct RealTimeArriaval: Decodable {
        let line: String
        let remainTime: String
        let currentStation: String
        
        enum CodingKeys: String, CodingKey {
            case line = "trainLineNm"
            case remainTime = "arvlMsg2"
            case currentStation = "arvlMsg3"
        }
    }
    
    
}

