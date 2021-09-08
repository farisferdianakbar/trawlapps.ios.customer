//
//  trawlpackStep_3.swift
//  UI_Study
//
//  Created by UI UX Trawlbens on 23/06/21.
//

import Foundation
import SwiftUI

struct trawlpackStep_3 : View {
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
//                    tambahkanBarang()
                    listFormtrawlpack_3()
                }
            }
        }
        .navigationBarTitle("Ringkasan Pesanan", displayMode: .inline)
        .navigationBarItems(leading: btnBack)
        .navigationBarBackButtonHidden(true)
            
    }
}

struct trawlpackStep_3_Previews: PreviewProvider {
    static var previews: some View{
        trawlpackStep_3()
    }
}


struct listFormtrawlpack_3 : View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            HStack{
                VStack(spacing: 0){
//                    tambahkanBarang()
                    coloumForm_3()
                }
                
                //MARK: LABEL
//                .padding(.top, -480)
            }
        }
        .navigationBarTitle(Text ("Ringkasan Pemesanan"), displayMode: .inline)
        .navigationBarBackButtonHidden(true)
        
        HStack{
            NavigationLink(destination: home()){
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


struct coloumForm_3 : View {
    
    @State var namaPengirim : String = ""
    @State var nohpPengirim : String = ""
    @State var kotaorkabPengirim : String = ""
    @State var alamatPengirim : String = ""
    @State var namaPenerima : String = ""
    @State var noHpPenerima : String = ""
    
    @State var provinsiPenerima : String = ""
    @State var kotaorkabPenerima : String = ""
    @State var kecamatanPenerima : String = ""
    @State var kelurahanPenerima : String = ""
    @State var alamatPenerima : String = ""
    @State var kodeposPenerima : String = ""
    
    @State private var checked = true
    
    let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)
    var body: some View{
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
            
            Text("Metode Pengiriman")
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .padding(.top, 20)
            
            HStack{
                Image("delivery")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .padding(.bottom, 12)
                    .padding(.trailing, 10
                    )
                VStack(alignment: .leading){
                    VStack(alignment: .leading){
                        HStack{
                            Text("Darat")
                                .padding(.top, 0)
                                .padding(.bottom, 0)
                                .foregroundColor(.black)
                                .font(.system(size: 14, weight: .regular))
                        }
                        Divider()
                    }
                }
            }
            
            Text("Estimasi Biaya Pengiriman")
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .padding(.top, 20)
            
            HStack{
                VStack(alignment: .leading){
                    VStack(alignment: .leading){
                        HStack(alignment: .top){
                            VStack(alignment: .leading){
                                HStack{
                                    Text("Deskripsi")
                                        .font(.system(size: 16, weight: .bold))
                                        .padding(.top, 0)
                                        .padding(.bottom, 0)
                                        .foregroundColor(.black)
                                        .frame(width: 100, height: .none, alignment: .topLeading)
                                    
                                    Text("Berat")
                                        .font(.system(size: 16, weight: .bold))
                                        .padding(.top, 0)
                                        .padding(.bottom, 0)
                                        .foregroundColor(.black)
                                        .padding(.leading, 8)
                                        .frame(width: 100, height: .none, alignment: .topLeading)
                                    
                                    Text("Harga")
                                        .font(.system(size: 16, weight: .bold))
                                        .padding(.top, 0)
                                        .padding(.bottom, 0)
                                        .foregroundColor(.black)
                                        .padding(.leading, 8)
                                        .frame(width: 120, height: .none, alignment: .topLeading)
                                }
                                
                                HStack(alignment: .top){
                                    Text("Buku 1 Dus")
                                        .font(.system(size: 14, weight: .regular))
                                        .padding(.top, 2)
                                        .padding(.bottom, 0)
                                        .foregroundColor(.black)
                                        .frame(width: 100, height: .none, alignment: .topLeading)
                                    Text("Rp 36.500")
                                        .font(.system(size: 14, weight: .regular))
                                        .padding(.top, 2)
                                        .padding(.bottom, 0)
                                        .padding(.leading, 8)
                                        .foregroundColor(.black)
                                        .frame(width: 100, height: .none, alignment: .topLeading)
                                    Text("Rp 36.500.000")
                                        .font(.system(size: 14, weight: .regular))
                                        .padding(.top, 2)
                                        .padding(.bottom, 0)
                                        .padding(.leading, 8)
                                        .foregroundColor(.black)
                                        .frame(width: 120, height: .none, alignment: .topLeading)
                                }
                                HStack(alignment: .top){
                                    Text("Asuransi")
                                        .font(.system(size: 14, weight: .regular))
                                        .padding(.top, 2)
                                        .padding(.bottom, 0)
                                        .foregroundColor(.black)
                                        .frame(width: 100, height: .none, alignment: .topLeading)
                                    
                                    Text("")
                                        .font(.system(size: 14, weight: .regular))
                                        .padding(.top, 2)
                                        .padding(.bottom, 0)
                                        .foregroundColor(.black)
                                        .frame(width: 100, height: .none, alignment: .topLeading)
                                    
                                    Text("Rp 36.500")
                                        .font(.system(size: 14, weight: .regular))
                                        .padding(.top, 2)
                                        .padding(.bottom, 0)
                                        .padding(.leading, 8)
                                        .foregroundColor(.black)
                                        .frame(width: 120, height: .none, alignment: .topLeading)
                                }.padding(.top, 2)
                            }
                            
                            
                            
                            
                           
                        }
                        .padding(.top, 12)
                        .padding(.bottom, 12)
                        
                        Divider()
                        
                        HStack(alignment: .top){
                            VStack(alignment: .leading){
                                
                                HStack(alignment: .top){
                                    Text("Buku 1 Dus asfsfasfasfgasdasdasdasfjklnsdalsndasndakjsdasdnaskjd")
                                        .font(.system(size: 14, weight: .regular))
                                        .padding(.top, 2)
                                        .padding(.bottom, 0)
                                        .foregroundColor(.black)
                                        .frame(width: 100, height: .none, alignment: .topLeading)
                                    Text("Rp 36.500.000.000")
                                        .font(.system(size: 14, weight: .regular))
                                        .padding(.top, 2)
                                        .padding(.bottom, 0)
                                        .padding(.leading, 8)
                                        .foregroundColor(.black)
                                        .frame(width: 100, height: .none, alignment: .topLeading)
                                    Text("Rp 36.500.000.000.000")
                                        .font(.system(size: 14, weight: .regular))
                                        .padding(.top, 2)
                                        .padding(.bottom, 0)
                                        .padding(.leading, 8)
                                        .foregroundColor(.black)
                                        .frame(width: 120, height: .none, alignment: .topLeading)
                                }
                                
                                HStack(alignment: .top){
                                    Text("Asuransi")
                                        .font(.system(size: 14, weight: .regular))
                                        .padding(.top, 2)
                                        .padding(.bottom, 0)
                                        .foregroundColor(.black)
                                        .frame(width: 100, height: .none, alignment: .topLeading)
                                    
                                    Text("")
                                        .font(.system(size: 14, weight: .regular))
                                        .padding(.top, 2)
                                        .padding(.bottom, 0)
                                        .foregroundColor(.black)
                                        .frame(width: 100, height: .none, alignment: .topLeading)
                                    
                                    Text("Rp 36.500.000.000.000")
                                        .font(.system(size: 14, weight: .regular))
                                        .padding(.top, 2)
                                        .padding(.bottom, 0)
                                        .padding(.leading, 8)
                                        .foregroundColor(.black)
                                        .frame(width: 120, height: .none, alignment: .topLeading)
                                }.padding(.top, 2)
                                
                            }
                        }
                        .padding(.top, 12)
                        .padding(.bottom, 12)
                        
                        Divider()
                        
                        HStack(alignment: .top){
                            VStack(alignment: .leading){
                                
                                HStack(alignment: .top){
                                    Text("Sub Total")
                                        .font(.system(size: 14, weight: .bold))
                                        .padding(.top, 2)
                                        .padding(.bottom, 0)
                                        .foregroundColor(.black)
                                        .frame(width: 100, height: .none, alignment: .topLeading)
                                    Text("25 Kg")
                                        .font(.system(size: 14, weight: .regular))
                                        .padding(.top, 2)
                                        .padding(.bottom, 0)
                                        .padding(.leading, 8)
                                        .foregroundColor(.black)
                                        .frame(width: 100, height: .none, alignment: .topLeading)
                                    Text("Rp 36.500.000")
                                        .font(.system(size: 14, weight: .regular))
                                        .padding(.top, 2)
                                        .padding(.bottom, 0)
                                        .padding(.leading, 8)
                                        .foregroundColor(.black)
                                        .frame(width: 120, height: .none, alignment: .topLeading)
                                }
                                
                                HStack(alignment: .top){
                                    Text("Asuransi")
                                        .font(.system(size: 14, weight: .bold))
                                        .padding(.top, 2)
                                        .padding(.bottom, 0)
                                        .foregroundColor(.black)
                                        .frame(width: 100, height: .none, alignment: .topLeading)
                                    
                                    Text("")
                                        .font(.system(size: 14, weight: .regular))
                                        .padding(.top, 2)
                                        .padding(.bottom, 0)
                                        .foregroundColor(.black)
                                        .frame(width: 100, height: .none, alignment: .topLeading)
                                    
                                    Text("Rp 36.500")
                                        .font(.system(size: 14, weight: .regular))
                                        .padding(.top, 2)
                                        .padding(.bottom, 0)
                                        .padding(.leading, 8)
                                        .foregroundColor(.black)
                                        .frame(width: 120, height: .none, alignment: .topLeading)
                                }.padding(.top, 2)
                                
                                HStack(alignment: .top){
                                    Text("Total")
                                        .font(.system(size: 14, weight: .bold))
                                        .padding(.top, 2)
                                        .padding(.bottom, 0)
                                        .foregroundColor(.black)
                                        .frame(width: 100, height: .none, alignment: .topLeading)
                                    
                                    Text("")
                                        .font(.system(size: 14, weight: .regular))
                                        .padding(.top, 2)
                                        .padding(.bottom, 0)
                                        .foregroundColor(.black)
                                        .frame(width: 100, height: .none, alignment: .topLeading)
                                    
                                    Text("Rp 36.500.000")
                                        .font(.system(size: 14, weight: .regular))
                                        .padding(.top, 2)
                                        .padding(.bottom, 0)
                                        .padding(.leading, 8)
                                        .foregroundColor(.black)
                                        .frame(width: 120, height: .none, alignment: .topLeading)
                                }
                                .padding(.top, 2)
                                .padding(.bottom, 12)
                                Divider()
                            }
                            
                            
                            
//                            VStack(alignment: .leading){
//                                Text("10.000 Kg")
//                                    .font(.system(size: 14, weight: .regular))
//                                    .padding(.top, 2)
//                                    .padding(.bottom, 0)
//                                    .foregroundColor(.black)
//                                    .frame(width: 40, height: 40, alignment: .topLeading)
//                            }
//                            .padding(.leading, 30)
                            
//                            VStack(alignment: .leading){
//                                Text("Rp 36.5000")
//                                    .font(.system(size: 14, weight: .regular))
//                                    .padding(.top, 2)
//                                    .padding(.bottom, 0)
//                                    .foregroundColor(.black)
//                                    .frame(width: 110, height: .none, alignment: .leading)
//                                Text("Rp 36.500")
//                                    .font(.system(size: 14, weight: .regular))
//                                    .padding(.top, 2)
//                                    .padding(.bottom, 0)
//                                    .foregroundColor(.black)
//                                    .frame(width: 110, height: .none, alignment: .leading)
//                            }
//                            .padding(.leading, 40)
                        }
                        .padding(.top, 12)
                        .padding(.bottom, 12)
                        
                    }
                }
            }
            Text("Syarat & Ketentuan")
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .padding(.top, 10)
            
            HStack{
                VStack{
                    CheckboxviewSumary(checked: $checked)
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
        .padding([.leading, .trailing], 20)
        .background(Color.white)
    }
}


struct CheckboxviewSumary: View {
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

