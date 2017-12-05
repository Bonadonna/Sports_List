//
//  Sports.swift
//  SportsList
//
//  Created by Luca Bonadonna on 05/12/2017.
//  Copyright © 2017 Luca Bonadonna. All rights reserved.
//

import Foundation


class Sport {
    
    var idSport : Int!
    var time_duration : Int?
    var match_duration : Int?
    var name : String?
    var number_of_times : Int?
    var icon : String?
    
    init(id:Int,time_duration:Int,match_duration:Int,name:String,number_of_times:Int,icon:String) {
        self.idSport = id
        self.time_duration = time_duration
        self.match_duration = match_duration
        self.name = name
        self.number_of_times = number_of_times
        self.icon = icon
    }
}
