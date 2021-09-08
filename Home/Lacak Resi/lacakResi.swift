//
//  trawlpackStep_1.swift
//  UI_Study
//
//  Created by UI UX Trawlbens on 21/06/21.
//

import Foundation
import SwiftUI

struct lacakResi : View {
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
                    listformlacakResi()
                }
            }
        }
        .navigationBarTitle("Lacak Resi", displayMode: .inline)
        .navigationBarItems(leading: btnBack)
        .navigationBarBackButtonHidden(true)
    }
}

struct lacakResi_Previews: PreviewProvider {
    static var previews: some View{
        lacakResi()
    }
}

struct listformlacakResi : View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            HStack{
                VStack(spacing: 0){
                    coloumlacakResi()
                }
            }
        }
        .navigationBarHidden(false)
        .navigationBarBackButtonHidden(true)
        
        HStack{
            NavigationLink(destination: lacakResi()){
                HStack{
                    VStack(alignment: .leading){
                        Text("Lacak Resi").bold().font(.callout)
                    }
                    .padding(.leading, 10)
                    Spacer()
                    
                    VStack(alignment: .trailing){
                        Image(systemName: "magnifyingglass")
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


struct coloumlacakResi : View {
    
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
                    Text("No. Resi")
                        .padding(.top, 30)
                        .padding(.bottom, 0)
                    TextField("Cth: 02452223", text: $lokasiPengirim)
                        .padding()
                        .background(lightGreyColor)
                        .cornerRadius(12.0)
                        .keyboardType(.default)
                        .autocapitalization(.none)
                }.padding(.top, -18).font(.system(size: 14, weight: .regular))
                
                VStack{
                    VStack(alignment: .leading){
                        Text("Alamat Pengiriman")
                            .font(.system(size: 20, weight: .bold, design: .rounded))
                            .padding(.top, 20)
                        HStack{
                            Image("pengirim_icon")
                                .padding(.bottom, 80)
                                .padding(.trailing, 10
                                )
                            VStack(alignment: .leading){
                                VStack(alignment: .leading){
                                    HStack{
                                        Text("Pengirim")
                                            .padding(.top, 30)
                                            .padding(.bottom, 0)
                                            .foregroundColor(.black)
                                    }
                                    HStack{
                                        Text("Faris Ferdian Akbar")
                                            .font(.system(size: 16, weight: .bold))
                                            .padding(.top, 1)
                                            .padding(.bottom, 0)
                                            .foregroundColor(.black)
                                    }
                                    HStack{
                                        Text("085694455935")
                                            .padding(.top, 0)
                                            .padding(.bottom, 0)
                                            .foregroundColor(.black)
                                    }
                                    HStack{
                                        Text("Jl. Soekarno No.1, Kel. Indarung, Kec. Lubuk Kilangan, Jakarta")
                                            .foregroundColor(.black)
                                            .padding(.bottom, 14)
                                    }
                                    .frame(width: 290, height: 50)
                                    Divider()
                                }
                            }.padding(.top, -18).font(.system(size: 14, weight: .regular))
                        }
                        
                        HStack{
                            Image("penerima_icon")
                                .padding(.bottom, 80)
                                .padding(.trailing, 10
                                )
                            VStack(alignment: .leading){
                                VStack(alignment: .leading){
                                    HStack{
                                        Text("Penerima")
                                            .padding(.top, 30)
                                            .padding(.bottom, 0)
                                            .foregroundColor(.black)
                                    }
                                    HStack{
                                        Text("Faris Ferdian Akbar")
                                            .font(.system(size: 16, weight: .bold))
                                            .padding(.top, 1)
                                            .padding(.bottom, 0)
                                            .foregroundColor(.black)
                                    }
                                    HStack{
                                        Text("085694455935")
                                            .padding(.top, 0)
                                            .padding(.bottom, 0)
                                            .foregroundColor(.black)
                                    }
                                    HStack{
                                        Text("Jl. Soekarno No.1, Kel. Indarung, Kec. Lubuk Kilangan, Jakarta")
                                            .foregroundColor(.black)
                                            .padding(.bottom, 14)
                                    }
                                    .frame(width: 290, height: 50)
                                    Divider()
                                }
                            }.padding(.top, -18).font(.system(size: 14, weight: .regular))
                        }
                        Text("Shipping Tracking")
                            .font(.system(size: 20, weight: .bold, design: .rounded))
                            .padding(.top, 20)
                        
                        Text("15/07/2020 - Warehouse Jakarta")
                            .font(.system(size: 16, weight: .regular))
                            .padding(.top, 10)
                        Text("10:00")
                            .font(.system(size: 16, weight: .regular))
                        Divider()
                        
                        Text("15/07/2020 - Warehouse Jakarta")
                            .font(.system(size: 16, weight: .regular))
                            .padding(.top, 10)
                        Text("10:00")
                            .font(.system(size: 16, weight: .regular))
                        Divider()
                    }
                }
                
                
            }
            
        }
        .padding([.leading, .trailing], 20)
        .background(Color.white)
    }
}
