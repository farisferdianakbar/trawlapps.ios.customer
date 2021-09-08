//
//  exampleRiwayat.swift
//  UI_Study
//
//  Created by UI UX Trawlbens on 02/07/21.
//

import Foundation
import SwiftUI

struct riwayatPakettelahdiproses : View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
        //Riwayat 1
                VStack(alignment: .leading){
                    HStack{
                        VStack(alignment: .leading){
                            Text("Mitra Bisnis A")
                                .font(.system(size: 16, weight: .bold, design: .default))
                                .padding(.bottom, 2)
                            Text("Jl. Soekarno No.101 dimana mana hati ku senang")
                                .font(.system(size: 14, weight: .regular, design: .default))
                                .frame(width: 200, height: 10)
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
                    }.padding(.bottom, 20)
                    Divider()
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
                                        
                                        Text("Ket.")
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
                                        Text("Jenis Packing")
                                            .font(.system(size: 14, weight: .regular))
                                            .padding(.top, 2)
                                            .padding(.bottom, 0)
                                            .foregroundColor(.black)
                                            .frame(width: 100, height: .none, alignment: .topLeading)
                                        
                                        Text("Kayu")
                                            .font(.system(size: 14, weight: .regular))
                                            .padding(.top, 2)
                                            .padding(.bottom, 0)
                                            .padding(.leading, 8)
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
                                        Text("Asuransi")
                                            .font(.system(size: 14, weight: .regular))
                                            .padding(.top, 2)
                                            .padding(.bottom, 0)
                                            .foregroundColor(.black)
                                            .frame(width: 100, height: .none, alignment: .topLeading)
                                        
                                        Text("Ya")
                                            .font(.system(size: 14, weight: .regular))
                                            .padding(.top, 2)
                                            .padding(.bottom, 0)
                                            .padding(.leading, 8)
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
                                        Text("Buku 1 Dus dengan toping ")
                                            .font(.system(size: 14, weight: .regular))
                                            .padding(.top, 2)
                                            .padding(.bottom, 0)
                                            .foregroundColor(.black)
                                            .frame(width: 100, height: .none, alignment: .topLeading)
                                        Text("Rp 36.500.0")
                                            .font(.system(size: 14, weight: .regular))
                                            .padding(.top, 2)
                                            .padding(.bottom, 0)
                                            .padding(.leading, 8)
                                            .foregroundColor(.black)
                                            .frame(width: 100, height: .none, alignment: .topLeading)
                                        Text("Rp 36.500")
                                            .font(.system(size: 14, weight: .regular))
                                            .padding(.top, 2)
                                            .padding(.bottom, 0)
                                            .padding(.leading, 8)
                                            .foregroundColor(.black)
                                            .frame(width: 120, height: .none, alignment: .topLeading)
                                    }
                                    
                                    HStack(alignment: .top){
                                        Text("Jenis Packing")
                                            .font(.system(size: 14, weight: .regular))
                                            .padding(.top, 2)
                                            .padding(.bottom, 0)
                                            .foregroundColor(.black)
                                            .frame(width: 100, height: .none, alignment: .topLeading)
                                        
                                        Text("Kayu")
                                            .font(.system(size: 14, weight: .regular))
                                            .padding(.top, 2)
                                            .padding(.bottom, 0)
                                            .padding(.leading, 8)
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
                                        Text("Asuransi")
                                            .font(.system(size: 14, weight: .regular))
                                            .padding(.top, 2)
                                            .padding(.bottom, 0)
                                            .foregroundColor(.black)
                                            .frame(width: 100, height: .none, alignment: .topLeading)
                                        
                                        Text("Ya")
                                            .font(.system(size: 14, weight: .regular))
                                            .padding(.top, 2)
                                            .padding(.bottom, 0)
                                            .padding(.leading, 8)
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
                                        Text("Biaya Packing")
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
                                    
                                    HStack{
                                        VStack(alignment: .leading){
                                            Button(action: {}){
                                                Text("Lainnya")
                                                Image(systemName: "chevron.down")
                                            }
                                            .foregroundColor(Color("hijau"))
                                            .padding([.leading, .trailing], 30)
                                            .padding([.top, .bottom], 15)
                                            .background(Color.white)
                                            .cornerRadius(12)
                                            .shadow(color: Color.black.opacity(0.5), radius: 1, x: 0.0, y: 0.0)
//                                            .padding(.trailing, 8)
                                        }
                                       
                                        VStack(alignment: .trailing){
                                            Button(action: {}){
                                                Text("Saya Setuju")
                                                    .foregroundColor(.white)
                                            }
                                            .padding([.leading, .trailing], 44)
                                            .padding([.top, .bottom], 15)
                                            .background(Color("hijau"))
                                            .cornerRadius(12)
//                                            .shadow(color: Color.black.opacity(0.5), radius: 1, x: 0.0, y: 0.0)
                                            .padding(.leading, 8)
                                        }
                                        
                                    }
                                    .padding(.bottom, 20)
                                    
                                    
                                    Divider()
                                    Text("Order Tracking")
                                        .font(.system(size: 20, weight: .bold, design: .rounded))
                                        .padding(.top, 20)
                                    VStack(alignment: .leading){
                                        HStack{
                                            Image(systemName: "circle.fill")
                                                .resizable()
                                                .frame(width: 12, height: 12, alignment: .center)
                                                .foregroundColor(Color("hijau"))
                                            VStack(alignment: .leading){
                                                Text("Paket di jemput kurir")
                                                    .font(.system(size: 14, weight: .regular, design: .default))
                                                Text("10:00")
                                                    .font(.system(size: 12, weight: .regular, design: .default))
                                            }.padding(.leading, 8)
                                        }
                                        HStack{
                                            Image(systemName: "circle.fill")
                                                .resizable()
                                                .frame(width: 12, height: 12, alignment: .center)
                                                .foregroundColor(Color("hijau"))
                                            VStack(alignment: .leading){
                                                Text("Paket di proses mitra")
                                                    .font(.system(size: 14, weight: .regular, design: .default))
                                                Text("10:00")
                                                    .font(.system(size: 12, weight: .regular, design: .default))
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
                            .padding(.top, 12)
                            .padding(.bottom, 12)
                            
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

struct detailPesanan_Previews: PreviewProvider {
    static var previews: some View {
        riwayatPakettelahdiproses()
    }
}
