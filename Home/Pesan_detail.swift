//
//  Pesan_detail.swift
//  UI_Study
//
//  Created by UI UX Trawlbens on 16/06/21.
//

import UIKit
import Foundation
import SwiftUI

struct Pesan_detail : View {
    var body: some View {
        NavigationView {
            TabView{
                home()
                    .navigationBarTitle("",displayMode: .inline)
                    .navigationBarHidden(true)
                    .tabItem {
                    Image(systemName: "message.fill").font(.title)
                }
                Text("Person").tabItem {
                    Image(systemName: "person.fill").font(.title)
                }
            }.edgesIgnoringSafeArea(.top)
            .accentColor(.blue)
        }
    }
}

struct home_pesan: View {
    
    @EnvironmentObject var data : msgDatas
    
    var body: some View {
        ZStack{
            Color("warna").edgesIgnoringSafeArea(.top)
            NavigationLink(destination: ChatView(), isActive: $data.show){
                Text("")
            }
            VStack{
                pesan()
            }
        }
    }
}

//struct MainView : View {
//    var body: some View {
//        List(msgs){i in
//            cellView(
//        }
//    }
//}

struct ChatView: View {
    var body: some View {
        ZStack{
            Color("warna").edgesIgnoringSafeArea(.top)
            VStack{
//                chatTopview()
            }
        }
    }
}

struct msgType : Identifiable {
    var id: Int
    var mitra_photo_profile: String
    var mitra_name: String
    var mitra_message: String
    var mitra_time_of_message: String
    var mitra_quantity_of_message: String
}

var msgs : [msgType] = [
    msgType(id: 0, mitra_photo_profile: "asdasd", mitra_name: "asdasd", mitra_message: "asdasd", mitra_time_of_message: "asdasd", mitra_quantity_of_message: "asdasd")
]

struct chatTopview : View {
    
    @EnvironmentObject var data : msgDatas

    var id: Int
    var mitra_photo_profile: String
    var mitra_name: String
    var mitra_message: String
    var mitra_time_of_message: String
    var mitra_quantity_of_message: String
    
    var body: some View {
        HStack{
            Button(action: {
            }){
                Image(systemName: "control").font(.title).rotationEffect(.init(degrees: -90))
                    .foregroundColor(.white)
            }
            Spacer()
            VStack(spacing: 5){
                Image(data.selectedData.mitra_photo_profile).resizable().frame(width: 45, height: 45).clipShape(Circle())
                Text(data.selectedData.mitra_name)
            }
            
            Spacer()
            
            Button(action: {
            }){
                Image(systemName: "phone.fill").font(.title)
            }
            
            Button(action: {
            }){
                Image(systemName: "video.fill").font(.title)
            }
        }.foregroundColor(.white)
    }
}

class msgDatas: ObservableObject {
    @Published var show: Bool = false
    @Published var selectedData : msgType = .init(id: 1, mitra_photo_profile: "", mitra_name: "", mitra_message: "", mitra_time_of_message: "", mitra_quantity_of_message: "")
    
}


struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}

