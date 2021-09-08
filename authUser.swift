//
//  AuthUser.swift
//  UI_Study
//
//  Created by UI UX Trawlbens on 21/06/21.
//

import Foundation

class authUser: ObservableObject{
    @Published var isLoggedin : Bool = false
    //print kesalahan
    @Published var isCorrect : Bool = true
}
