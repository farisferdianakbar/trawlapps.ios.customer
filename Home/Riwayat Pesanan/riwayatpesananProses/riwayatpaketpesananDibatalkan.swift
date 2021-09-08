//
//  riwayatpaketpesananDibatalkan.swift
//  UI_Study
//
//  Created by UI UX Trawlbens on 07/07/21.
//

import Foundation
import SwiftUI

struct pesanandetailDibatalkan : View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
        //Riwayat 1
                VStack(alignment: .leading){
                    HStack{
                        Text("Status Pengiriman")
                            .font(.system(size: 12, weight: .semibold, design: .default))
                        Image(systemName: "circle.fill")
                            .resizable()
                            .frame(width: 12, height: 12, alignment: .center)
                            .foregroundColor(Color("warna"))
                        Text("Cancel")
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
                        VStack(alignment: .leading){
                            Text("Alamat")
                                .font(.system(size: 16, weight: .bold, design: .default))
                                .padding(.top, 12)
                            Text("Jl. Soekarno No.1, Kel. Indarung, Kec. Lubuk Kilangan, Padang, 251212.")
                                .font(.system(size: 14, weight: .regular, design: .default))
                                .frame(width: 280, height: 20)
                                .padding(.bottom, 12)
                        }
                        Spacer()
                        VStack(alignment: .trailing){
                            Image("directions_satu")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .padding(.trailing, 30)
                                .foregroundColor(Color("hijau"))
                        }
                    }
                    
                    
                    Divider()
                    
                    HStack{
                        Image("gue_ganteng_app")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .cornerRadius(60)
                        VStack(alignment: .leading){
                            Text("Mitra Business A")
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
                    
                    VStack(alignment: .leading){
                        Text("Status Barang: Ambil Sendiri")
                            .font(.system(size: 16, weight: .bold, design: .default))
                            .padding(.top, 12)
                        Text("Segera lakukan pengambilan barang sebelum tgl. 17/07/2021")
                            .font(.system(size: 14, weight: .regular, design: .default))
                            .padding(.top, 2)
                            .padding(.bottom, 12)
                    }
                    
                    Divider()
                    
                HStack{
                    VStack(alignment: .leading){
                        VStack(alignment: .leading){
                            
                            Text("Metode Pembayaran")
                                .font(.system(size: 20, weight: .bold, design: .rounded))
                                .padding(.top, 20)
                            
                            HStack{
                                Image("cash_satu")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .padding(.bottom, 12)
                                    .padding(.trailing, 10
                                    )
                                VStack(alignment: .leading){
                                    VStack(alignment: .leading){
                                        HStack{
                                            Text("Cash di tempat")
                                                .padding(.top, 0)
                                                .padding(.bottom, 0)
                                                .foregroundColor(.black)
                                                .font(.system(size: 14, weight: .regular))
                                        }
                                        Divider()
                                    }
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
    }
}

struct pesanandetailDibatalkan_Previews: PreviewProvider {
    static var previews: some View {
        pesanandetailDibatalkan()
    }
}
