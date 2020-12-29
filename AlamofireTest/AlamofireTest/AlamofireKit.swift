//
//  AlamofireKit.swift
//  AlamofireTest
//
//  Created by Dhaval Trivedi on 29/12/20.
//

import UIKit
import Alamofire

open class AlamofireKit: NSObject {

    open class func networkCall(completion: @escaping (Any) -> Void) {
        let parameters: Parameters = [
          "q": "term",
          "format": "json",
          "pretty": 1,
          "no_html": 1,
          "skip_disambig": 1
        ]
        AF.request(
          "https://api.duckduckgo.com",
            method: .get,
          parameters: parameters)
          .responseData { response in
            // 3
            completion(response)
        }
    }
    
}
