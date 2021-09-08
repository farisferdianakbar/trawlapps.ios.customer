//
//  DataModel.swift
//  ModelDataSwiftUI
//
//  Created by UI UX Trawlbens on 12/06/21.
//

import Foundation

// 2 Model Data
struct DataModel : Identifiable {
    let id: Int
    let namaProduk : String
    let fotoProduk : String
    let hargaProduk : Int
    let lokasi: String
    let ratingCount: Int
    let jumlahRating: Int
    
    init(id: Int, namaProduk: String, fotoProduk: String, hargaProduk: Int, lokasi: String, ratingCount: Int, jumlahRating: Int) {
        
        self.id = id
        self.namaProduk = namaProduk
        self.fotoProduk = fotoProduk
        self.hargaProduk = hargaProduk
        self.lokasi = lokasi
        self.ratingCount = ratingCount
        self.jumlahRating = jumlahRating
        
        
    }
    
}
