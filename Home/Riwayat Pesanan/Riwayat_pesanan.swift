//
//  Riwayat_pesanan.swift
//  UI_Study
//
//  Created by UI UX Trawlbens on 15/06/21.
//

import UIKit
import Foundation
import SwiftUI


//MARK: PESANAN
    
struct pesanan : View {
    
    @State var currentTab = "All"
    @State var selectedTab = scroll_Tabs[0]
    @Namespace var animation
    @State var show = false
    @State var txt = ""
    
    
    var body: some View{
            GeometryReader {
                geo in
            VStack(spacing: 0){
                VStack(spacing: 0){
                    HStack {
                        if !self.show{
                            Text("Riwayat Pesanan")
                                .fontWeight(.bold)
                                .font(.title)
                                .foregroundColor(.white)
                        }
                        
                        Spacer(minLength: 0)
                        
                        HStack{
                            if self.show{
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(Color("warna"))
                                TextField("Masukan Resi", text: self.$txt)
                                Button(action: {
                                    
                                    withAnimation{
                                        self.show.toggle()
                                    }
                                }) {
                                    Image(systemName: "xmark").foregroundColor(Color.gray)
                                }
                            }
                            else{
                                Button(action: {
                                    withAnimation {
                                        self.show.toggle()
                                    }
                                }) {
                                    Image(systemName: "magnifyingglass")
                                        .foregroundColor(Color("warna")).padding(10)
                                }
                            }
                        }
                        .padding(self.show ? 10 : 0)
                        .background(Color.white)
                        .cornerRadius(20)
                    }
                    .padding(.top, (UIApplication.shared.windows.first?.safeAreaInsets.top)! + 15)
                    .padding(.horizontal)
                    .padding(.bottom, 10)
                    .background(Color("warna"))
                }
                
                
                ZStack{
                    VStack{
                        ScrollView(.horizontal, showsIndicators: false){
                                HStack(spacing: 20){
                                    ForEach(scroll_Tabs, id:\.self){tab in TabButton(title: tab, selectedTab: $selectedTab, animation: animation)
                                    }
                                }
                                .padding(EdgeInsets.init(top: 1, leading: -50, bottom: 1, trailing: 0))
                        }
                        .navigationBarHidden(true)
                        .navigationBarBackButtonHidden(true)
                    }
                    .padding()
                    .frame(width: geo.size.width)
                    .background(Color("warna"))
                }
                VStack{
                    ScrollView(.vertical, showsIndicators: false){
                    list_riwayat()
                    }
                }
            }
            .edgesIgnoringSafeArea(.top)
        }
            .navigationBarTitle("", displayMode: .inline)
        }
}



struct list_riwayat : View {
    var body: some View {
        //Riwayat 1
        NavigationLink(destination: UI_Study.riwayatpesanansedangdalamPenjemputan()){
            VStack(alignment: .leading){
                    HStack{
                        Image("Trawlpack")
                            .resizable()
                            .frame(width: 25, height: 25)
                        HStack{
                            Text("Trawlpack")
                                .font(.system(size: 18, weight: .bold, design: .rounded))
                        }
                        .padding(.leading, 10)
                        Spacer()
                        
                        HStack{
                            Text("09:00 AM")
                                .font(.system(size: 14, weight: .regular, design: .rounded))
                        }
                        .padding(.trailing, -100)
                        Spacer()
                    }
                    .padding(.leading, 20)
                    .foregroundColor(.black)
                
//                VStack(alignment: .leading){
//                    Text("Sedang dalam penjemputan")
//                }
//                .font(.system(size: 14, weight: .regular, design: .rounded))
//                .padding(.leading, 12)
//                .foregroundColor(.yellow)
                
                VStack{
                    HStack{
                        Image(systemName: "circle.fill")
                            .resizable()
                            .frame(width: 10, height: 10)
                        Text("Sedang dalam penjemputan")
                    }
                    .font(.system(size: 14, weight: .regular, design: .rounded))
                    .padding(.top, 1)
                    .foregroundColor(.yellow)
                    .padding(.leading, 56)
                }
//                .padding(.trailing, 15)
                
                HStack{
                    VStack{
                        Text("Dari")
                    }
                    .font(.system(size: 14, weight: .bold, design: .rounded))
                    .padding(.top, 1)
                    .foregroundColor(Color("warna"))
                    .padding(.leading, 16)
                    
                    VStack{
                        Text("Prum Gas RT 09 Kota Padang, Kec. Lubuk Kilangan")
                    }
                    .font(.system(size: 14, weight: .regular, design: .rounded))
                    .padding(.top, 1)
                    .padding(.leading, 6)
                    .foregroundColor(Color("text_secondary"))
                }
                .padding(.trailing, 15)
                
                HStack{
                    VStack{
                        Text("Ke")
                    }
                    .font(.system(size: 14, weight: .bold, design: .rounded))
                    .padding(.top, 1)
                    .padding(.leading, 16)
                    .foregroundColor(Color("warna"))
                    
                    VStack{
                        Text("Prum Nurma RT 02 Kota Bandung, Kec. Selamat")
                    }
                    .font(.system(size: 14, weight: .regular, design: .rounded))
                    .padding(.top, 1)
                    .padding(.leading, 16)
                    .foregroundColor(Color("text_secondary"))
                }
                .padding(.trailing, 15)
            }
            .frame(width: fixedSize() as? CGFloat, height: 180)
            .background(Color.white)
            .cornerRadius(16)
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0.0, y: 0.0)
            .padding(.top, 20)
            .padding([.leading, .trailing], 20)
        }
        //Riwayat 2
        NavigationLink(destination: UI_Study.riwayatpesananstatusProcess()){
            VStack(alignment: .leading){
                    HStack{
                        Image("Trawlpack")
                            .resizable()
                            .frame(width: 25, height: 25)
                        HStack{
                            Text("Trawlpack")
                                .font(.system(size: 18, weight: .bold, design: .rounded))
                        }
                        .padding(.leading, 10)
                        Spacer()
                        
                        HStack{
                            Text("09:00 AM")
                                .font(.system(size: 14, weight: .regular, design: .rounded))
                        }
                        .padding(.trailing, -100)
                        Spacer()
                    }
                    .padding(.leading, 20)
                    .foregroundColor(.black)
                
                VStack{
                    HStack{
                        Image(systemName: "circle.fill")
                            .resizable()
                            .frame(width: 10, height: 10)
                        Text("Paket telah diproses mitra")
                    }
                    .font(.system(size: 14, weight: .regular, design: .rounded))
                    .padding(.top, 1)
                    .foregroundColor(.yellow)
                    .padding(.leading, 56)
                }
//                .padding(.trailing, 15)
                
                HStack{
                    VStack{
                        Text("Dari")
                    }
                    .font(.system(size: 14, weight: .bold, design: .rounded))
                    .padding(.top, 1)
                    .foregroundColor(Color("warna"))
                    .padding(.leading, 16)
                    
                    VStack{
                        Text("Prum Gas RT 09 Kota Padang, Kec. Lubuk Kilangan")
                    }
                    .font(.system(size: 14, weight: .regular, design: .rounded))
                    .padding(.top, 1)
                    .padding(.leading, 6)
                    .foregroundColor(Color("text_secondary"))
                }
                .padding(.trailing, 15)
                
                HStack{
                    VStack{
                        Text("Ke")
                    }
                    .font(.system(size: 14, weight: .bold, design: .rounded))
                    .padding(.top, 1)
                    .padding(.leading, 16)
                    .foregroundColor(Color("warna"))
                    
                    VStack{
                        Text("Prum Nurma RT 02 Kota Bandung, Kec. Selamat")
                    }
                    .font(.system(size: 14, weight: .regular, design: .rounded))
                    .padding(.top, 1)
                    .padding(.leading, 16)
                    .foregroundColor(Color("text_secondary"))
                }
                .padding(.trailing, 15)
            }
            .frame(width: fixedSize() as? CGFloat, height: 180)
            .background(Color.white)
            .cornerRadius(16)
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0.0, y: 0.0)
            .padding(.top, 10)
            .padding([.leading, .trailing], 20)
        }
        //Riwayat 3
        NavigationLink(destination: UI_Study.paketsedangmenungguDriver()){
            VStack(alignment: .leading){
                    HStack{
                        Image("Trawlpack")
                            .resizable()
                            .frame(width: 25, height: 25)
                        HStack{
                            Text("Trawlpack")
                                .font(.system(size: 18, weight: .bold, design: .rounded))
                        }
                        .padding(.leading, 10)
                        Spacer()
                        
                        HStack{
                            Text("09:00 AM")
                                .font(.system(size: 14, weight: .regular, design: .rounded))
                        }
                        .padding(.trailing, -100)
                        Spacer()
                    }
                    .padding(.leading, 20)
                    .foregroundColor(.black)
                
//                VStack(alignment: .leading){
//                    Text("Sedang dalam penjemputan")
//                }
//                .font(.system(size: 14, weight: .regular, design: .rounded))
//                .padding(.leading, 12)
//                .foregroundColor(.yellow)
                
                VStack{
                    HStack{
                        Image(systemName: "circle.fill")
                            .resizable()
                            .frame(width: 10, height: 10)
                        Text("Menunggu Driver")
                    }
                    .font(.system(size: 14, weight: .regular, design: .rounded))
                    .padding(.top, 1)
                    .foregroundColor(.yellow)
                    .padding(.leading, 56)
                }
//                .padding(.trailing, 15)
                
                HStack{
                    VStack{
                        Text("Dari")
                    }
                    .font(.system(size: 14, weight: .bold, design: .rounded))
                    .padding(.top, 1)
                    .foregroundColor(Color("warna"))
                    .padding(.leading, 16)
                    
                    VStack{
                        Text("Prum Gas RT 09 Kota Padang, Kec. Lubuk Kilangan")
                    }
                    .font(.system(size: 14, weight: .regular, design: .rounded))
                    .padding(.top, 1)
                    .padding(.leading, 6)
                    .foregroundColor(Color("text_secondary"))
                }
                .padding(.trailing, 15)
                
                HStack{
                    VStack{
                        Text("Ke")
                    }
                    .font(.system(size: 14, weight: .bold, design: .rounded))
                    .padding(.top, 1)
                    .padding(.leading, 16)
                    .foregroundColor(Color("warna"))
                    
                    VStack{
                        Text("Prum Nurma RT 02 Kota Bandung, Kec. Selamat")
                    }
                    .font(.system(size: 14, weight: .regular, design: .rounded))
                    .padding(.top, 1)
                    .padding(.leading, 16)
                    .foregroundColor(Color("text_secondary"))
                }
                .padding(.trailing, 15)
            }
            .frame(width: fixedSize() as? CGFloat, height: 180)
            .background(Color.white)
            .cornerRadius(16)
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0.0, y: 0.0)
            .padding(.top, 10)
            .padding([.leading, .trailing], 20)
        }
        //Riwayat 4
        NavigationLink(destination: UI_Study.requestRevisi()){
            VStack(alignment: .leading){
                    HStack{
                        Image("Trawlpack")
                            .resizable()
                            .frame(width: 25, height: 25)
                        HStack{
                            Text("Trawlpack")
                                .font(.system(size: 18, weight: .bold, design: .rounded))
                        }
                        .padding(.leading, 10)
                        Spacer()
                        
                        HStack{
                            Text("09:00 AM")
                                .font(.system(size: 14, weight: .regular, design: .rounded))
                        }
                        .padding(.trailing, -100)
                        Spacer()
                    }
                    .padding(.leading, 20)
                    .foregroundColor(.black)
                
//                VStack(alignment: .leading){
//                    Text("Sedang dalam penjemputan")
//                }
//                .font(.system(size: 14, weight: .regular, design: .rounded))
//                .padding(.leading, 12)
//                .foregroundColor(.yellow)
                
                VStack{
                    HStack{
                        Image(systemName: "circle.fill")
                            .resizable()
                            .frame(width: 10, height: 10)
                        Text("Request Revisi")
                    }
                    .font(.system(size: 14, weight: .regular, design: .rounded))
                    .padding(.top, 1)
                    .foregroundColor(.yellow)
                    .padding(.leading, 56)
                }
//                .padding(.trailing, 15)
                
                HStack{
                    VStack{
                        Text("Dari")
                    }
                    .font(.system(size: 14, weight: .bold, design: .rounded))
                    .padding(.top, 1)
                    .foregroundColor(Color("warna"))
                    .padding(.leading, 16)
                    
                    VStack{
                        Text("Prum Gas RT 09 Kota Padang, Kec. Lubuk Kilangan")
                    }
                    .font(.system(size: 14, weight: .regular, design: .rounded))
                    .padding(.top, 1)
                    .padding(.leading, 6)
                    .foregroundColor(Color("text_secondary"))
                }
                .padding(.trailing, 15)
                
                HStack{
                    VStack{
                        Text("Ke")
                    }
                    .font(.system(size: 14, weight: .bold, design: .rounded))
                    .padding(.top, 1)
                    .padding(.leading, 16)
                    .foregroundColor(Color("warna"))
                    
                    VStack{
                        Text("Prum Nurma RT 02 Kota Bandung, Kec. Selamat")
                    }
                    .font(.system(size: 14, weight: .regular, design: .rounded))
                    .padding(.top, 1)
                    .padding(.leading, 16)
                    .foregroundColor(Color("text_secondary"))
                }
                .padding(.trailing, 15)
            }
            .frame(width: fixedSize() as? CGFloat, height: 180)
            .background(Color.white)
            .cornerRadius(16)
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0.0, y: 0.0)
            .padding(.top, 10)
            .padding([.leading, .trailing], 20)
        }
        //Riwayat 5
        NavigationLink(destination: UI_Study.menungguPembayaranform()){
            VStack(alignment: .leading){
                    HStack{
                        Image("Trawlpack")
                            .resizable()
                            .frame(width: 25, height: 25)
                        HStack{
                            Text("Trawlpack")
                                .font(.system(size: 18, weight: .bold, design: .rounded))
                        }
                        .padding(.leading, 10)
                        Spacer()
                        
                        HStack{
                            Text("09:00 AM")
                                .font(.system(size: 14, weight: .regular, design: .rounded))
                        }
                        .padding(.trailing, -100)
                        Spacer()
                    }
                    .padding(.leading, 20)
                    .foregroundColor(.black)
                
                VStack{
                    HStack{
                        Image(systemName: "circle.fill")
                            .resizable()
                            .frame(width: 10, height: 10)
                        Text("Menunggu Pembayaran")
                    }
                    .font(.system(size: 14, weight: .regular, design: .rounded))
                    .padding(.top, 1)
                    .foregroundColor(.red)
                    .padding(.leading, 56)
                }
//                .padding(.trailing, 15)
                
                HStack{
                    VStack{
                        Text("Dari")
                    }
                    .font(.system(size: 14, weight: .bold, design: .rounded))
                    .padding(.top, 1)
                    .foregroundColor(Color("warna"))
                    .padding(.leading, 16)
                    
                    VStack{
                        Text("Prum Gas RT 09 Kota Padang, Kec. Lubuk Kilangan")
                    }
                    .font(.system(size: 14, weight: .regular, design: .rounded))
                    .padding(.top, 1)
                    .padding(.leading, 6)
                    .foregroundColor(Color("text_secondary"))
                }
                .padding(.trailing, 15)
                
                HStack{
                    VStack{
                        Text("Ke")
                    }
                    .font(.system(size: 14, weight: .bold, design: .rounded))
                    .padding(.top, 1)
                    .padding(.leading, 16)
                    .foregroundColor(Color("warna"))
                    
                    VStack{
                        Text("Prum Nurma RT 02 Kota Bandung, Kec. Selamat")
                    }
                    .font(.system(size: 14, weight: .regular, design: .rounded))
                    .padding(.top, 1)
                    .padding(.leading, 16)
                    .foregroundColor(Color("text_secondary"))
                }
                .padding(.trailing, 15)
            }
            .frame(width: fixedSize() as? CGFloat, height: 180)
            .background(Color.white)
            .cornerRadius(16)
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0.0, y: 0.0)
            .padding(.top, 10)
            .padding([.leading, .trailing], 20)
        }
        //Riwayat 6
        NavigationLink(destination: UI_Study.barangtelahSampai()){
            VStack(alignment: .leading){
                    HStack{
                        Image("Trawlpack")
                            .resizable()
                            .frame(width: 25, height: 25)
                        HStack{
                            Text("Trawlpack")
                                .font(.system(size: 18, weight: .bold, design: .rounded))
                        }
                        .padding(.leading, 10)
                        Spacer()
                        
                        HStack{
                            Text("09:00 AM")
                                .font(.system(size: 14, weight: .regular, design: .rounded))
                        }
                        .padding(.trailing, -100)
                        Spacer()
                    }
                    .padding(.leading, 20)
                    .foregroundColor(.black)
                
//                VStack(alignment: .leading){
//                    Text("Sedang dalam penjemputan")
//                }
//                .font(.system(size: 14, weight: .regular, design: .rounded))
//                .padding(.leading, 12)
//                .foregroundColor(.yellow)
                
                VStack{
                    HStack{
                        Image(systemName: "circle.fill")
                            .resizable()
                            .frame(width: 10, height: 10)
                        Text("Barang telah sampai")
                    }
                    .font(.system(size: 14, weight: .regular, design: .rounded))
                    .padding(.top, 1)
                    .foregroundColor(.green)
                    .padding(.leading, 56)
                }
//                .padding(.trailing, 15)
                
                HStack{
                    VStack{
                        Text("Dari")
                    }
                    .font(.system(size: 14, weight: .bold, design: .rounded))
                    .padding(.top, 1)
                    .foregroundColor(Color("warna"))
                    .padding(.leading, 16)
                    
                    VStack{
                        Text("Prum Gas RT 09 Kota Padang, Kec. Lubuk Kilangan")
                    }
                    .font(.system(size: 14, weight: .regular, design: .rounded))
                    .padding(.top, 1)
                    .padding(.leading, 6)
                    .foregroundColor(Color("text_secondary"))
                }
                .padding(.trailing, 15)
                
                HStack{
                    VStack{
                        Text("Ke")
                    }
                    .font(.system(size: 14, weight: .bold, design: .rounded))
                    .padding(.top, 1)
                    .padding(.leading, 16)
                    .foregroundColor(Color("warna"))
                    
                    VStack{
                        Text("Prum Nurma RT 02 Kota Bandung, Kec. Selamat")
                    }
                    .font(.system(size: 14, weight: .regular, design: .rounded))
                    .padding(.top, 1)
                    .padding(.leading, 16)
                    .foregroundColor(Color("text_secondary"))
                }
                .padding(.trailing, 15)
            }
            .frame(width: fixedSize() as? CGFloat, height: 180)
            .background(Color.white)
            .cornerRadius(16)
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0.0, y: 0.0)
            .padding(.top, 10)
            .padding([.leading, .trailing], 20)
        }
        //Riwayat 7
        NavigationLink(destination: UI_Study.pesananDibatalkan()){
            VStack(alignment: .leading){
                    HStack{
                        Image("Trawlpack")
                            .resizable()
                            .frame(width: 25, height: 25)
                        HStack{
                            Text("Trawlpack")
                                .font(.system(size: 18, weight: .bold, design: .rounded))
                        }
                        .padding(.leading, 10)
                        Spacer()
                        
                        HStack{
                            Text("09:00 AM")
                                .font(.system(size: 14, weight: .regular, design: .rounded))
                        }
                        .padding(.trailing, -100)
                        Spacer()
                    }
                    .padding(.leading, 20)
                    .foregroundColor(.black)
                
//                VStack(alignment: .leading){
//                    Text("Sedang dalam penjemputan")
//                }
//                .font(.system(size: 14, weight: .regular, design: .rounded))
//                .padding(.leading, 12)
//                .foregroundColor(.yellow)
                
                VStack{
                    HStack{
                        Image(systemName: "circle.fill")
                            .resizable()
                            .frame(width: 10, height: 10)
                        Text("Pesanan dibatalkan")
                    }
                    .font(.system(size: 14, weight: .regular, design: .rounded))
                    .padding(.top, 1)
                    .foregroundColor(.red)
                    .padding(.leading, 56)
                }
//                .padding(.trailing, 15)
                
                HStack{
                    VStack{
                        Text("Dari")
                    }
                    .font(.system(size: 14, weight: .bold, design: .rounded))
                    .padding(.top, 1)
                    .foregroundColor(Color("warna"))
                    .padding(.leading, 16)
                    
                    VStack{
                        Text("Prum Gas RT 09 Kota Padang, Kec. Lubuk Kilangan")
                    }
                    .font(.system(size: 14, weight: .regular, design: .rounded))
                    .padding(.top, 1)
                    .padding(.leading, 6)
                    .foregroundColor(Color("text_secondary"))
                }
                .padding(.trailing, 15)
                
                HStack{
                    VStack{
                        Text("Ke")
                    }
                    .font(.system(size: 14, weight: .bold, design: .rounded))
                    .padding(.top, 1)
                    .padding(.leading, 16)
                    .foregroundColor(Color("warna"))
                    
                    VStack{
                        Text("Prum Nurma RT 02 Kota Bandung, Kec. Selamat")
                    }
                    .font(.system(size: 14, weight: .regular, design: .rounded))
                    .padding(.top, 1)
                    .padding(.leading, 16)
                    .foregroundColor(Color("text_secondary"))
                }
                .padding(.trailing, 15)
            }
            .frame(width: fixedSize() as? CGFloat, height: 180)
            .background(Color.white)
            .cornerRadius(16)
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0.0, y: 0.0)
            .padding(.top, 10)
            .padding([.leading, .trailing], 20)
        }
        //Riwayat 8
        NavigationLink(destination: UI_Study.riwayatpesananstatusExpired()){
            VStack(alignment: .leading){
                    HStack{
                        Image("Trawlpack")
                            .resizable()
                            .frame(width: 25, height: 25)
                        HStack{
                            Text("Trawlpack")
                                .font(.system(size: 18, weight: .bold, design: .rounded))
                        }
                        .padding(.leading, 10)
                        Spacer()
                        
                        HStack{
                            Text("09:00 AM")
                                .font(.system(size: 14, weight: .regular, design: .rounded))
                        }
                        .padding(.trailing, -100)
                        Spacer()
                    }
                    .padding(.leading, 20)
                    .foregroundColor(.black)
                
//                VStack(alignment: .leading){
//                    Text("Sedang dalam penjemputan")
//                }
//                .font(.system(size: 14, weight: .regular, design: .rounded))
//                .padding(.leading, 12)
//                .foregroundColor(.yellow)
                
                VStack{
                    HStack{
                        Image(systemName: "circle.fill")
                            .resizable()
                            .frame(width: 10, height: 10)
                        Text("Pesanan Gagal . Expired")
                    }
                    .font(.system(size: 14, weight: .regular, design: .rounded))
                    .padding(.top, 1)
                    .foregroundColor(.gray)
                    .padding(.leading, 56)
                }
//                .padding(.trailing, 15)
                
                HStack{
                    VStack{
                        Text("Dari")
                    }
                    .font(.system(size: 14, weight: .bold, design: .rounded))
                    .padding(.top, 1)
                    .foregroundColor(Color("warna"))
                    .padding(.leading, 16)
                    
                    VStack{
                        Text("Prum Gas RT 09 Kota Padang, Kec. Lubuk Kilangan")
                    }
                    .font(.system(size: 14, weight: .regular, design: .rounded))
                    .padding(.top, 1)
                    .padding(.leading, 6)
                    .foregroundColor(Color("text_secondary"))
                }
                .padding(.trailing, 15)
                
                HStack{
                    VStack{
                        Text("Ke")
                    }
                    .font(.system(size: 14, weight: .bold, design: .rounded))
                    .padding(.top, 1)
                    .padding(.leading, 16)
                    .foregroundColor(Color("warna"))
                    
                    VStack{
                        Text("Prum Nurma RT 02 Kota Bandung, Kec. Selamat")
                    }
                    .font(.system(size: 14, weight: .regular, design: .rounded))
                    .padding(.top, 1)
                    .padding(.leading, 16)
                    .foregroundColor(Color("text_secondary"))
                }
                .padding(.trailing, 15)
            }
            .frame(width: fixedSize() as? CGFloat, height: 180)
            .background(Color.white)
            .cornerRadius(16)
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0.0, y: 0.0)
            .padding(.top, 10)
            .padding([.leading, .trailing], 20)
        }
        
        
        
    }
}

struct Riwayat_pesanan_Previews: PreviewProvider {
    static var previews: some View {
        pesanan()
    }
}


