//
//  trawlpackStep_1.swift
//  UI_Study
//
//  Created by UI UX Trawlbens on 21/06/21.
//

import Foundation
import SwiftUI

struct cekTarif : View {
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
                    listformcekTarif()
                }
            }
        }
        .navigationBarTitle("Cek Tarif", displayMode: .inline)
        .navigationBarItems(leading: btnBack)
        .navigationBarBackButtonHidden(true)
    }
}

struct cekTarif_Previews: PreviewProvider {
    static var previews: some View{
        cekTarif()
    }
}

struct listformcekTarif : View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            HStack{
                VStack(spacing: 0){
                    coloumcekTarif()
                }
            }
        }
        .navigationBarHidden(false)
        .navigationBarBackButtonHidden(true)
        
        HStack{
            NavigationLink(destination: trawlpackStep_1()){
                HStack{
                    VStack(alignment: .leading){
                        Text("Order TrawlPack").bold().font(.callout)
                    }
                    .padding(.leading, 10)
                    Spacer()
                    
                    VStack(alignment: .trailing){
                        Image(systemName: "paperplane.fill")
                    }
                    .padding(.trailing, 10)
                }
                .foregroundColor(.white)
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


struct coloumcekTarif : View {
    
    @State var lokasiPengirim : String = ""
    @State var lokasiPenerima : String = ""
    @State var kecamatanPenerima : String = ""
    @State var kecamatanTujuan : String = ""
    @State var kelurahanTujuan : String = ""
    
    let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)
    var body: some View{
        VStack(alignment: .leading){
            VStack(alignment: .leading){
                VStack(alignment: .leading){
                    Text("Pilih Layanan")
                        .padding(.top, 30)
                        .padding(.bottom, 0)
                    TextField("Trawlpack (Kirim Paket)", text: $lokasiPengirim)
                        .padding()
                        .background(lightGreyColor)
                        .cornerRadius(12.0)
                        .keyboardType(.default)
                        .autocapitalization(.none)
                        .disabled(true)
                }.padding(.top, -18).font(.system(size: 14, weight: .regular))
                
                VStack(alignment: .leading){
                    Text("Lokasi Pengirim")
                        .padding(.top, 30)
                        .padding(.bottom, 0)
                    
                    HStack(){
                        ZStack(alignment: .trailing){
                            TextField("Pilih Kota / Kabupaten", text: $lokasiPenerima)
                                .padding()
                                .background(lightGreyColor)
                                .cornerRadius(12.0)
                                .keyboardType(.default)
                                .autocapitalization(.none)
                            
                            Button(action: {
                                
                            }) {
                                Image(systemName: "chevron.down.square.fill")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                            }
                            .padding(16)
                            .foregroundColor(.gray)
                        }
                        
                    }
                    
                    
                }.padding(.top, -18).font(.system(size: 14, weight: .regular))
                
                VStack(alignment: .leading){
                    Text("Lokasi Penerima")
                        .padding(.top, 30)
                        .padding(.bottom, 0)
                    
                    HStack(){
                        ZStack(alignment: .trailing){
                            TextField("Pilih Kota / Kabupaten", text: $lokasiPenerima)
                                .padding()
                                .background(lightGreyColor)
                                .cornerRadius(12.0)
                                .keyboardType(.default)
                                .autocapitalization(.none)
                            
                            Button(action: {
                                
                            }) {
                                Image(systemName: "chevron.down.square.fill")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                            }
                            .padding(16)
                            .foregroundColor(.gray)
                        }
                        
                    }
                    
                    
                }.padding(.top, -18).font(.system(size: 14, weight: .regular))
                
                VStack(alignment: .leading){
                    Text("Kecamatan Tujuan")
                        .padding(.top, 30)
                        .padding(.bottom, 0)
                    
                    HStack(){
                        ZStack(alignment: .trailing){
                            TextField("Pilih Kecamatan", text: $kecamatanTujuan)
                                .padding()
                                .background(lightGreyColor)
                                .cornerRadius(12.0)
                                .keyboardType(.default)
                                .autocapitalization(.none)
                            
                            Button(action: {
                                
                            }) {
                                Image(systemName: "chevron.down.square.fill")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                            }
                            .padding(16)
                            .foregroundColor(.gray)
                        }
                        
                    }
                    
                    
                }.padding(.top, -18).font(.system(size: 14, weight: .regular))
                
                VStack(alignment: .leading){
                    Text("Kelurahan Tujuan")
                        .padding(.top, 30)
                        .padding(.bottom, 0)
                    
                    HStack(){
                        ZStack(alignment: .trailing){
                            TextField("Pilih Kelurahan", text: $kelurahanTujuan)
                                .padding()
                                .background(lightGreyColor)
                                .cornerRadius(12.0)
                                .keyboardType(.default)
                                .autocapitalization(.none)
                            
                            Button(action: {
                                
                            }) {
                                Image(systemName: "chevron.down.square.fill")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                            }
                            .padding(16)
                            .foregroundColor(.gray)
                        }
                        
                    }
                    
                    
                }.padding(.top, -18).font(.system(size: 14, weight: .regular))
                
                VStack(alignment: .leading){
                    Text("Tarif")
                        .padding(.top, 30)
                        .padding(.bottom, 0)
                        .font(.system(size: 20, weight: .bold))
                    
                    Text("0-10kg = Rp 8.500/kg")
                        .padding(.top, 10)
                        .padding(.bottom, 0)
                        .font(.system(size: 14, weight: .bold))
                    Text("0-10kg = Rp 8.500/kg")
                        .padding(.top, 2)
                        .padding(.bottom, 0)
                        .font(.system(size: 14, weight: .bold))
                    Text("0-10kg = Rp 8.500/kg")
                        .padding(.top, 2)
                        .padding(.bottom, 0)
                        .font(.system(size: 14, weight: .bold))
                    Text("0-10kg = Rp 8.500/kg")
                        .padding(.top, 2)
                        .padding(.bottom, 0)
                        .font(.system(size: 14, weight: .bold))
                    Text("Tidak termasuk packing, asuransi, dan PPN.")
                        .padding(.top, 12)
                        .padding(.bottom, 0)
                        .font(.system(size: 14, weight: .regular))
                }.padding(.top, -18)
            }
            
        }
        .padding([.leading, .trailing], 20)
        .background(Color.white)
    }
}
