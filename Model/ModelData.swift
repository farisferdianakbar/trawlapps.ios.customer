//
//  ModelData.swift
//  UI_Study
//
//  Created by UI UX Trawlbens on 14/06/21.
//

import Foundation
import SwiftUI

struct BagModel: Identifiable {
    var id = UUID().uuidString
    var image : String
    var title : String
    var price : String
}

var bags = [

    BagModel(image: "berita_1", title: "test", price: "Rp 123.000.000"),
    BagModel(image: "berita_1", title: "test", price: "Rp 123.000.000"),
    BagModel(image: "berita_1", title: "test", price: "Rp 123.000.000"),
    BagModel(image: "berita_1", title: "test", price: "Rp 123.000.000"),

]

var scroll_Tabs = ["Semua(10)", "Sedang di jemput", "Sedang diproses"]

class TabViewModel: ObservableObject {
    @Published var selectedItem : messageType!
    @Published var isDetails = false
}
