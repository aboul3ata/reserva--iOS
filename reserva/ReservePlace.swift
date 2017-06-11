//
//  ReservePlace.swift
//  reserva
//
//  Created by Ali Abouelatta on 6/11/17.
//  Copyright © 2017 Ali Abouelatta. All rights reserved.
//

import Foundation

class ReservePlace {
    private var _imageURL: String!
    private var _title: String!
    
    var imageURL: String {
        return _imageURL
    }
    
    var title: String {
        return _title
        
    }
    
    init (imageURL: String, title: String){
        
        _imageURL = imageURL
        _title = title
    }


}
