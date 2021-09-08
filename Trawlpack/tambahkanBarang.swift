//
//  tambahkanBarang.swift
//  UI_Study
//
//  Created by UI UX Trawlbens on 24/06/21.
//

import Foundation
import SwiftUI

struct tambahkanBarang: View {
    var body: some View{
        ZStack{
            VStack{
                Spacer()
                inputdataBarang()
//                    .offset(y: (UIApplication.shared.windows.last?.safeAreaInsets.bottom)! + 15)
            }
            .edgesIgnoringSafeArea(.bottom)
            .navigationBarTitle("Informasi Pengiriman", displayMode: .inline)
            .navigationBarBackButtonHidden(true)
        }
        .animation(.default)
    }
}

struct tambahkanBarang_Previews: PreviewProvider {
    static var previews: some View{
        tambahkanBarang()
    }
}

struct inputdataBarang: View {
    
    @State var deskripsiBarang : String = ""
    @State var panjangBarang : String = ""
    @State var lebarBarang : String = ""
    @State var tinggiBarang : String = ""
    @State var beratBarang : String = ""
    @State var jumlahpaketBarang : String = ""
    @State var perkiraanhargaBarang : String = ""
    
    @State private var checked = true
    
    let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)
    var body: some View{
                VStack(alignment: .leading){
                    Text("Pengirim")
                        .font(.system(size: 24, weight: .bold, design: .rounded))
                        .padding(.top, 20)
                    VStack{
                        VStack(alignment: .leading){
                            Text("Deskripsi Barang")
                                .padding(.top, 30)
                                .padding(.bottom, 0)
                            TextField("Cth: Budi", text: $deskripsiBarang)
                                .padding()
                                .background(lightGreyColor)
                                .cornerRadius(12.0)
                                .keyboardType(.default)
                                .autocapitalization(.none)
                        }.padding(.top, -18).font(.system(size: 14, weight: .regular))
                        
                        VStack{
                            HStack{
                                VStack(alignment: .leading){
                                    Text("P (cm)")
                                        .padding(.top, 30)
                                        .padding(.bottom, 0)
                                    TextField("... cm", text: $panjangBarang)
                                        .padding()
                                        .background(lightGreyColor)
                                        .cornerRadius(12.0)
                                        .keyboardType(.default)
                                        .autocapitalization(.none)
                                }
                                VStack(alignment: .leading){
                                    Text("L (cm)")
                                        .padding(.top, 30)
                                        .padding(.bottom, 0)
                                    TextField("... cm", text: $panjangBarang)
                                        .padding()
                                        .background(lightGreyColor)
                                        .cornerRadius(12.0)
                                        .keyboardType(.default)
                                        .autocapitalization(.none)
                                }
                                VStack(alignment: .leading){
                                    Text("T (cm)")
                                        .padding(.top, 30)
                                        .padding(.bottom, 0)
                                    TextField("... cm", text: $panjangBarang)
                                        .padding()
                                        .background(lightGreyColor)
                                        .cornerRadius(12.0)
                                        .keyboardType(.default)
                                        .autocapitalization(.none)
                                }
                            }
                            
                        }.padding(.top, -18).font(.system(size: 14, weight: .regular))
                        
                        VStack(alignment: .leading){
                            Text("Berat (Kg)")
                                .padding(.top, 30)
                                .padding(.bottom, 0)
                            
                            HStack(){
                                ZStack(alignment: .trailing){
                                    TextField("Cth: Jakarta", text: $lebarBarang)
                                        .padding()
                                        .background(lightGreyColor)
                                        .cornerRadius(12.0)
                                        .keyboardType(.default)
                                        .autocapitalization(.none)
                                }
                                
                            }
                        }.padding(.top, -18).font(.system(size: 14, weight: .regular))
                        
                        VStack(alignment: .leading){
                            Text("Jumlah Paket")
                                .padding(.top, 30)
                                .padding(.bottom, 0)
                            
                            HStack(){
                                ZStack(alignment: .trailing){
                                    TextField("Cth: 20 Paket", text: $lebarBarang)
                                        .padding()
                                        .background(lightGreyColor)
                                        .cornerRadius(12.0)
                                        .keyboardType(.default)
                                        .autocapitalization(.none)
                                    
                                }
                                
                            }
                        }.padding(.top, -18).font(.system(size: 14, weight: .regular))
                        
                        VStack(alignment: .leading){
                            Text("Perkiraan harga barang ")
                                .padding(.top, 30)
                                .padding(.bottom, 0)
                            
                            HStack(){
                                ZStack(alignment: .trailing){
                                    TextField("Cth: 20.000.000", text: $lebarBarang)
                                        .padding()
                                        .background(lightGreyColor)
                                        .cornerRadius(12.0)
                                        .keyboardType(.default)
                                        .autocapitalization(.none)
                                    
                                    Button(action: {
                                        
                                    }) {
                                        Image(systemName: "questionmark.circle")
                                            .resizable()
                                            .frame(width: 20, height: 20)
                                    }
                                    .padding(16)
                                    .foregroundColor(.gray)
                                }
                                
                            }
                        }.padding(.top, -18).font(.system(size: 14, weight: .regular))
                        
                        HStack{
                            
                                VStack{
                                    checkboxasuransiView(checked: $checked)
                                }
                                HStack{
                                    Text("Saya menyetujui")
                                }
                                .font(.system(size: 14, weight: .regular))
                                .foregroundColor(Color.black)
                                Button(action:{}){
                                    Text("Ketentuan Layanan")
                                }
                                .font(.system(size: 14, weight: .bold))
                                .foregroundColor(Color("hijau"))
                                Spacer()
                        }
                        .padding([.top, .bottom], 14)
                        .foregroundColor(.red)
                        
                    }
                }
//                .padding(.bottom,(UIApplication.shared.windows.last?.safeAreaInsets.bottom)! + 10)
                .edgesIgnoringSafeArea(.bottom)
                .foregroundColor(.black)
                .padding(.vertical)
                .padding(.horizontal, 25)
                .background(Color.orange)
                .cornerRadius(20)
        

    }
}

struct checkboxasuransiView: View {
    @Binding var checked: Bool
    var body: some View {
        Image(systemName: checked ? "checkmark.square.fill" : "square")
            .resizable()
            .frame(width: 24, height: 24)
            .foregroundColor(checked ? Color("hijau") : Color.secondary)
            .onTapGesture {
                self.checked.toggle()
            }
            .padding(.trailing, 10)
    }
}
