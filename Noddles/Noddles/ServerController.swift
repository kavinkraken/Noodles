//
//  ServerController.swift
//  Noddles
//
//  Created by Kavinkumar S Thangammal on 20/12/22.
//

import UIKit

class ServerController: NSObject {
    static func callForGet(urlString:String ,completion:@escaping (_ success: Bool,_ response : Data?, _ message: String) -> Void) -> () {
        
        let components = URLComponents(string: urlString)!
        var request = URLRequest(url: components.url!)
        request.httpMethod = "GET"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        ServerController().makeURLRequest(request: request) { success, response, message in
            completion(success,response,message)
        }
    }
    
    func makeURLRequest(request:URLRequest,completion:@escaping (_ success: Bool,_ response : Data?, _ message: String) -> Void) -> () {
        debugPrint(request)
        let sessionConfig = URLSessionConfiguration.default
        sessionConfig.timeoutIntervalForRequest = 30.0
        sessionConfig.timeoutIntervalForResource = 60.0
        let session = URLSession(configuration: sessionConfig)
        session.dataTask(with: request) { (data, response, error) in
            if let data = data {
//                print(data.toString() as Any)
                completion(true,data, "")
            }
            else {
                completion(false,nil,"Invalid")
            }
        }.resume()
    }
}
