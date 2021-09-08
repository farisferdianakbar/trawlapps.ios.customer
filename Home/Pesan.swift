//
//  Pesan.swift
//  UI_Study
//
//  Created by UI UX Trawlbens on 16/06/21.
//

import UIKit
import Foundation
import SwiftUI

struct pesan : View {
    
    @State var currentTab = "All"
    @State var selectedTab = scroll_Tabs[0]
    @Namespace var animation
    @State var show = false
    @State var txt = ""
    
    var body: some View {
        GeometryReader {
            geo in
        VStack(spacing: 0){
            VStack(spacing: 0){
                HStack {
                    if !self.show{
                        Text("Pesan")
                            .fontWeight(.bold)
                            .font(.title)
                            .foregroundColor(.white)
                    }
                    
                    Spacer(minLength: 0)
                }
                .padding(.top, 65)
                .padding(.horizontal)
                .padding(.bottom, 20)
                .background(Color("warna"))
            }
            VStack{
               
                    cell_list_pesan()
                        .clipShape(rounded())
                        .background(Color("warna"))
                
                    
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
        .navigationBarTitle("", displayMode: .inline)
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct pesan_Previews: PreviewProvider {
    static var previews: some View {
        pesan()
    }
}

struct cell_list_pesan : View {
    var body: some View {
        List{
            list_pesan(id: 0, mitra_photo_profile: "Gue_ganteng_app", mitra_name: "Faris Ferdian Akbar", mitra_message: "Hallo Gesti, pesanan kamu telah kami proses ya", mitra_time_of_message: "09:00", mitra_quantity_of_message: "5")
            list_pesan(id: 1,mitra_photo_profile: "Gue_ganteng_app", mitra_name: "Nurma Quality of transport", mitra_message: "Hallo Gesti,", mitra_time_of_message: "09:00", mitra_quantity_of_message: "5")
            list_pesan(id: 2,mitra_photo_profile: "Gue_ganteng_app", mitra_name: "Faris", mitra_message: "Hallo Gesti, pesanan kamu telah kami proses ya asdasdasfasf", mitra_time_of_message: "09:00", mitra_quantity_of_message: "5")
            list_pesan(id: 3,mitra_photo_profile: "Gue_ganteng_app", mitra_name: "Faris Ferdian Akbar", mitra_message: "Hallo Gesti, pesanan kamu telah kami proses ya", mitra_time_of_message: "09:00", mitra_quantity_of_message: "5")
            list_pesan(id: 4,mitra_photo_profile: "Gue_ganteng_app", mitra_name: "Faris Ferdian Akbar", mitra_message: "Hallo Gesti, pesanan kamu telah kami proses ya", mitra_time_of_message: "09:00", mitra_quantity_of_message: "5")
            list_pesan(id: 5,mitra_photo_profile: "Gue_ganteng_app", mitra_name: "Faris Ferdian Akbar", mitra_message: "Hallo Gesti, pesanan kamu telah kami proses ya", mitra_time_of_message: "09:00", mitra_quantity_of_message: "5")
            list_pesan(id: 6,mitra_photo_profile: "Gue_ganteng_app", mitra_name: "Faris Ferdian Akbar", mitra_message: "Hallo Gesti, pesanan kamu telah kami proses ya", mitra_time_of_message: "09:00", mitra_quantity_of_message: "5")
            list_pesan(id: 7,mitra_photo_profile: "Gue_ganteng_app", mitra_name: "Faris Ferdian Akbar", mitra_message: "Hallo Gesti, pesanan kamu telah kami proses ya", mitra_time_of_message: "09:00", mitra_quantity_of_message: "5")
            list_pesan(id: 8,mitra_photo_profile: "Gue_ganteng_app", mitra_name: "Faris Ferdian Akbar", mitra_message: "Hallo Gesti, pesanan kamu telah kami proses ya", mitra_time_of_message: "09:00", mitra_quantity_of_message: "5")
        }
    }
}

struct list_pesan: View {
    
    var id : Int
    var mitra_photo_profile: String
    var mitra_name: String
    var mitra_message: String
    var mitra_time_of_message: String
    var mitra_quantity_of_message: String
    
    var body: some View {
        
            ScrollView(.vertical){
                    //PESAN 1
            VStack(alignment:.leading){
                Section(){
                    Button(action: {print("Ini detail chat")}){
                        
                            HStack(spacing: 20){
                                Image(mitra_photo_profile)
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .clipShape(Circle())
                                
                                //NAMA & DETAIL
                                VStack{
                                    HStack{
                                        VStack{
                                        Text(mitra_name).font(.headline)
                                        }
                                        
                                    }
                                    .frame(width: 220, height: 12, alignment: .bottomLeading)
                                   
                                    VStack{
                                        Spacer()
                                        Text(mitra_message).font(.caption)
                                    }
                                    .frame(width: 220, height: 20, alignment: .bottomLeading)
                                }
                                .foregroundColor(.black)
                                Spacer()
                                VStack{
                                    HStack{
                                        Text(mitra_time_of_message).font(.caption)
                                    }
                                    .frame(width: 40, height: 10, alignment: .bottomTrailing)
                                    .padding(.leading, -40)
                                    ZStack{
                                        Text(mitra_quantity_of_message)
                                        .foregroundColor(Color.white)
                                        .frame(width: 12, height: 12)
                                        .font(.body)
                                        .padding(5)
                                        .background(Color.orange)
                                        .clipShape(Circle())
                                            
                                    }.padding(.leading, -20)
                                }
                                
                            }
                            .padding(.top,10)
                            .padding(.bottom,10)
                            .padding(.leading, 0)
                        
                    }
                    
                }
            }
        }
            .padding(.top, 6)
        
            
    }
}

struct details_chat: View {
    var body: some View {
        Text ("Hello Details")
    }
}

struct rounded : Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: .topLeft, cornerRadii: CGSize(width: 35, height: 35))
        return Path(path.cgPath)
    }
}


