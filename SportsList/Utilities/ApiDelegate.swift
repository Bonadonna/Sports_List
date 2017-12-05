//
//  ApiDelegate.swift
//  SportsList
//
//  Created by Luca Bonadonna on 05/12/2017.
//  Copyright © 2017 Luca Bonadonna. All rights reserved.
//

import UIKit
import AlamofireSwiftyJSON
import Alamofire

class ApiDelegate {
    static var delegate = ApiDelegate()
    
    func getAllSportWith(completion: @escaping ([Sport]) -> Void, failure:@escaping (Error) -> Void) {
        let url = "https://sandbox.prenotauncampo.it/rest/sports/"
        Alamofire.request(url, method:.get).responseSwiftyJSON(options: .allowFragments, completionHandler: {  response in
            if (response.response?.statusCode == 200){
                var sports : [Sport] = []
                print(response.value!)
                let result = response.value!
                let data = result["data"]
                let list = data["list"].arrayValue
                for item in list{
                    sports.append(Sport(id: item["id"].intValue, time_duration: item["time_duration"].intValue, match_duration: item["match_duration"].intValue, name: item["name"].stringValue, number_of_times: item["number_of_times"].intValue, icon: item["icon"].stringValue))
                }
                completion(sports)
            }
            else{
                failure(response.error!)
            }
        })
        
    }
    
}
