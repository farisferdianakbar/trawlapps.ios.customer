//
//  notifikasi.swift
//  UI_Study
//
//  Created by UI UX Trawlbens on 26/06/21.
//

import Foundation
import SwiftUI

struct notificationPage: View {
        @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
        var btnBack: some View {
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Image(systemName: "arrow.left")
                    .resizable()
                    .frame(width: 25, height: 20)
                    .shadow(color: Color.black.opacity(0.2), radius: 2, x: 0.0, y: 0.0)
            }
            .foregroundColor(.white)
        }
        var body: some View {
            VStack {
                ZStack{
                    Color(.white).edgesIgnoringSafeArea(.top)
                    VStack{
                        cell_list_pesan_dua()
//                            .clipShape(rounded())
                            .background(Color("warna"))
                    }
                }
            }
            .navigationBarTitle("Notifikasi", displayMode: .inline)
            .navigationBarItems(leading: btnBack)
            .navigationBarBackButtonHidden(true)
            
        }
    }


struct listNotification : View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            HStack{
                VStack(spacing: 0){
                    listnotificationDetail()
                }
            }
        }
        .navigationBarHidden(false)
        .navigationBarBackButtonHidden(true)
    }
}

struct notificationPage_Previews: PreviewProvider {
    static var previews: some View{
        listnotificationDetail()
    }
}

struct listnotificationDetail : View {
    
    
    let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)
    var body: some View{
        VStack{
            cell_list_pesan_dua()
//                .clipShape(rounded())
                .background(Color("warna"))
        }
    }
}

struct cell_list_pesan_dua : View {
    var body: some View {
        List{
            list_pesan_dua(id: 0, mitra_photo_profile: "1. Mendapatkan driver-1", mitra_name: "Faris Ferdian Akbar", mitra_message: "Hallo Gesti, pesanan kamu telah kami proses ya", mitra_time_of_message: "09:00", mitra_quantity_of_message: "")
            list_pesan_dua(id: 1,mitra_photo_profile: "2. Barang telah diproses-1", mitra_name: "Nurma Quality of transport", mitra_message: "Hallo Gesti,", mitra_time_of_message: "09:00", mitra_quantity_of_message: "")
            list_pesan_dua(id: 2,mitra_photo_profile: "5. Dangers-1", mitra_name: "Faris", mitra_message: "Hallo Gesti, pesanan kamu telah kami proses ya asdasdasfasf", mitra_time_of_message: "09:00", mitra_quantity_of_message: "")
            list_pesan_dua(id: 3,mitra_photo_profile: "3. Alert-1", mitra_name: "Faris Ferdian Akbar", mitra_message: "Hallo Gesti, pesanan kamu telah kami proses ya", mitra_time_of_message: "09:00", mitra_quantity_of_message: "")
            list_pesan_dua(id: 4,mitra_photo_profile: "4. Arrived-1", mitra_name: "Faris Ferdian Akbar", mitra_message: "Hallo Gesti, pesanan kamu telah kami proses ya", mitra_time_of_message: "09:00", mitra_quantity_of_message: "")
            list_pesan_dua(id: 5,mitra_photo_profile: "5. Dangers-1", mitra_name: "Faris Ferdian Akbar", mitra_message: "Hallo Gesti, pesanan kamu telah kami proses ya", mitra_time_of_message: "09:00", mitra_quantity_of_message: "")
            list_pesan_dua(id: 6,mitra_photo_profile: "3. Alert-1", mitra_name: "Faris Ferdian Akbar", mitra_message: "Hallo Gesti, pesanan kamu telah kami proses ya", mitra_time_of_message: "09:00", mitra_quantity_of_message: "")
            list_pesan_dua(id: 7,mitra_photo_profile: "4. Arrived-1", mitra_name: "Faris Ferdian Akbar", mitra_message: "Hallo Gesti, pesanan kamu telah kami proses ya", mitra_time_of_message: "09:00", mitra_quantity_of_message: "")
            list_pesan_dua(id: 8,mitra_photo_profile: "4. Arrived-1", mitra_name: "Faris Ferdian Akbar", mitra_message: "Hallo Gesti, pesanan kamu telah kami proses ya", mitra_time_of_message: "09:00", mitra_quantity_of_message: "")
        }
    }
}

struct list_pesan_dua: View {
    
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
                                    .frame(width: 40, height: 40)
//                                    .clipShape(Circle())
                                
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
                                        .frame(width: 4, height: 4)
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
