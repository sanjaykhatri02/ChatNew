//
//  JsonSerializing.swift
//  ConnectMateCustomer
//
//  Created by macbook on 11/05/2023.
//

import Foundation


protocol JsonSerializingChat : Codable {
    var JSONRepresentation : [String : Any] { get }
}

extension JsonSerializingChat {
    
    
    var JSONRepresentation : [String : Any] {
        
        var representation = [String:Any]()
        
        for case let (label?, value) in Mirror(reflecting: self).children {
            
            switch value {
            case let value as Dictionary<String,Any>:
                
                representation[label] = value as AnyObject
                
            case let value as Array<Any>:
                
                if let val = value as? [JSONSerializable]{
                    representation[label] = val.map({ $0.JSONRepresentation as AnyObject}) as AnyObject
                } else {
                    representation[label] = value as AnyObject
                }
                
            case let value as JSONSerializable:
                
                representation[label] = value.JSONRepresentation
                
            case let value as AnyObject :
                
                representation[label] = value
                
            default: break
            }
        }
        return representation
    }
    
    // Convert to data by Encoding
    
    func toData()->Data? {
        
        do {
            
           return try JSONEncoder().encode(self)
            
        } catch let err {
            print("Error in Encoding ", self.JSONRepresentation, err.localizedDescription)
            return nil
        }
        
    }
    
    
    
//    func toData()->Data?{  // Convert struct directly into json request
//
//        let representation = JSONRepresentation
//
//        return getData(representation)
//
//
//    }
    
}



