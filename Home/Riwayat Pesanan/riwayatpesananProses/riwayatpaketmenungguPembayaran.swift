//
//  riwayatpaketmenungguPembayaran.swift
//  UI_Study
//
//  Created by UI UX Trawlbens on 05/07/21.
//

import Foundation
import SwiftUI

struct menungguPembayaranform : View {
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
                    riwayatpaketmenungguPembayaran()
                }
            }
        }
        .navigationBarTitle("Menunggu Pembayaran", displayMode: .inline)
        .navigationBarItems(leading: btnBack)
        .navigationBarBackButtonHidden(true)
    }
}

struct riwayatpaketmenungguPembayaran : View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
        //Riwayat 1
                VStack(alignment: .leading){
                    HStack{
                        Text("Status Pembayaran")
                            .font(.system(size: 12, weight: .semibold, design: .default))
                        Image(systemName: "circle.fill")
                            .resizable()
                            .frame(width: 12, height: 12, alignment: .center)
                            .foregroundColor(Color("warna"))
                        Text("Pending")
                            .font(.system(size: 12, weight: .regular, design: .default))
                            .foregroundColor(Color("warna"))
                    }
                    .padding([.leading, .trailing], 20)
                    .padding([.top, .bottom], 20)
                    .frame(width: 346, height: 40)
                    .background(Color.white)
                    .cornerRadius(80)
                    .shadow(color: Color.black.opacity(0.5), radius: 1, x: 0.0, y: 0.0)
                    .padding(.top, 10)
                    .padding(.bottom, 20)
                    
                    Divider()
                    
                    HStack{
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .cornerRadius(60)
                            .foregroundColor(.gray)
                        VStack(alignment: .leading){
                            Text("Mitra Bisnis A")
                                .font(.system(size: 16, weight: .bold, design: .default))
                                .padding(.bottom, 2)
                            Text("085694455935")
                                .font(.system(size: 14, weight: .regular, design: .default))
                                .frame(width: 200, height: 10)
                                .padding(.leading, -46)
                        }
                        Spacer()
                        VStack{
                            HStack{
                                VStack{
                                    Image(systemName: "envelope.fill")
                                        .resizable()
                                        .frame(width: 24, height: 20, alignment: .center)
                                }
                                    .frame(width: 20, height: 20, alignment: .center)
                                    .padding(.all, 12)
                                    .foregroundColor(Color("warna"))
                                    .background(Color.white)
                                    .cornerRadius(40)
                                    .shadow(color: Color.black.opacity(0.5), radius: 1, x: 0.0, y: 0.0)
                                VStack{
                                    Image(systemName: "phone.fill")
                                        .resizable()
                                        .frame(width: 20, height: 20, alignment: .center)
                                }
                                    .padding(.all, 12)
                                    .foregroundColor(Color.green)
                                    .background(Color.white)
                                    .cornerRadius(40)
                                    .shadow(color: Color.black.opacity(0.5), radius: 1, x: 0.0, y: 0.0)
                            }.padding(.trailing, 12)
                        }
                    }.padding([.top, .bottom], 10)
                    Divider()
                HStack{
                    VStack(alignment: .leading){
                        VStack(alignment: .leading){
                            
                            Text("Order Tracking")
                                .font(.system(size: 20, weight: .bold, design: .rounded))
                                .padding(.top, 20)
                            VStack(alignment: .leading){
                                HStack{
                                    Image(systemName: "circle")
                                        .resizable()
                                        .frame(width: 12, height: 12, alignment: .center)
                                        .foregroundColor(Color("hijau"))
                                    VStack(alignment: .leading){
                                        Text("Paket di jemput kurir")
                                            .font(.system(size: 14, weight: .regular, design: .default))
                                            .foregroundColor(.gray)
                                    }.padding(.leading, 8)
                                }
                                HStack{
                                    Image(systemName: "circle")
                                        .resizable()
                                        .frame(width: 12, height: 12, alignment: .center)
                                        .foregroundColor(Color("hijau"))
                                    VStack(alignment: .leading){
                                        Text("Paket di proses mitra")
                                            .font(.system(size: 14, weight: .regular, design: .default))
                                            .foregroundColor(.gray)
                                    }.padding(.leading, 8)
                                }
                                HStack{
                                    Image(systemName: "circle")
                                        .resizable()
                                        .frame(width: 12, height: 12, alignment: .center)
                                        .foregroundColor(Color("hijau"))
                                    VStack(alignment: .leading){
                                        Text("Payment")
                                            .font(.system(size: 14, weight: .regular, design: .default))
                                            .foregroundColor(.gray)
                                    }.padding(.leading, 8)
                                }
                                HStack{
                                    Image(systemName: "circle")
                                        .resizable()
                                        .frame(width: 12, height: 12, alignment: .center)
                                        .foregroundColor(Color("hijau"))
                                    VStack(alignment: .leading){
                                        Text("Shipping")
                                            .foregroundColor(.gray)
                                            .font(.system(size: 14, weight: .regular, design: .default))
                                    }.padding(.leading, 8)
                                }
                                HStack{
                                    Image(systemName: "circle")
                                        .resizable()
                                        .frame(width: 12, height: 12, alignment: .center)
                                        .foregroundColor(Color("hijau"))
                                    VStack(alignment: .leading){
                                        Text("Delivery")
                                            .font(.system(size: 14, weight: .regular, design: .default))
                                            .foregroundColor(.gray)
                                    }.padding(.leading, 8)
                                }
                            }
                        }
                    }
                }
                }
                .padding(.leading, 16)
            .background(Color.white)
            .cornerRadius(16)
            .padding(.top, 14)
//                .padding(.top, -140)
                
            
        }
        
        HStack{
            NavigationLink(destination: trawlpackStep_2()){
                HStack{
                    Spacer()
                    Text("Selanjutnya").bold().font(.callout).foregroundColor(.white)
                    Spacer()
                }
                .padding()
                .background(Color("primary_1"))
                .cornerRadius(12)
                .padding(.top, 0)
                .padding(.bottom, 10)
            }
        }
        .padding([.trailing, .leading], 20)
        .padding(.top, 12)
        .background(Color.white)
    }
}

struct riwayatpaketmenungguPembayaran_Previews: PreviewProvider {
    static var previews: some View {
        riwayatpaketmenungguPembayaran()
    }
}

struct riwayatpaketmenunggupembayaranColoum : View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            HStack{
                VStack(spacing: 0){
                    riwayatpaketmenungguPembayaran()
                }
            }
        }
        .navigationBarHidden(false)
        .navigationBarBackButtonHidden(true)
        
        HStack{
            NavigationLink(destination: trawlpackStep_2()){
                HStack{
                    Spacer()
                    Text("Selanjutnya").bold().font(.callout).foregroundColor(.white)
                    Spacer()
                }
                .padding()
                .background(Color("primary_1"))
                .cornerRadius(12)
                .padding(.top, 0)
                .padding(.bottom, 10)
            }
        }
        .padding([.trailing, .leading], 20)
        .padding(.top, 12)
        .background(Color.white)
    }
}
