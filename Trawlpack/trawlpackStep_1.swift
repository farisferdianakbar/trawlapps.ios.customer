//
//  trawlpackStep_1.swift
//  UI_Study
//
//  Created by UI UX Trawlbens on 21/06/21.
//

import Foundation
import SwiftUI

struct trawlpackStep_1 : View {
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
                    listFormtrawlpack_1()
                }
            }
        }
        .navigationBarTitle("Informasi Pengiriman", displayMode: .inline)
        .navigationBarItems(leading: btnBack)
        .navigationBarBackButtonHidden(true)
    }
}
struct trawlpackStep_1_Previews: PreviewProvider {
    static var previews: some View{
        trawlpackStep_1()
    }
}

struct listFormtrawlpack_1 : View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            HStack{
                VStack(spacing: 0){
                    coloumForm_1()
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


struct coloumForm_1 : View {
    
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
    
    let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)
    var body: some View{
        VStack(alignment: .leading){
            Text("Pengirim")
                .font(.system(size: 24, weight: .bold, design: .rounded))
                .padding(.top, 20)
            VStack{
                VStack(alignment: .leading){
                    Text("Nama Pengirim")
                        .padding(.top, 30)
                        .padding(.bottom, 0)
                    TextField("Cth: Budi", text: $namaPengirim)
                        .padding()
                        .background(lightGreyColor)
                        .cornerRadius(12.0)
                        .keyboardType(.default)
                        .autocapitalization(.none)
                }.padding(.top, -18).font(.system(size: 14, weight: .regular))
                
                VStack(alignment: .leading){
                    Text("Nomor HP")
                        .padding(.top, 30)
                        .padding(.bottom, 0)
                    TextField("Cth: 081234567890", text: $namaPengirim)
                        .padding()
                        .background(lightGreyColor)
                        .cornerRadius(12.0)
                        .keyboardType(.default)
                        .autocapitalization(.none)
                }.padding(.top, -18).font(.system(size: 14, weight: .regular))
                
                VStack(alignment: .leading){
                    Text("Kota / Kabupaten Asal")
                        .padding(.top, 30)
                        .padding(.bottom, 0)
                    
                    HStack(){
                        ZStack(alignment: .trailing){
                            TextField("Cth: Jakarta", text: $namaPengirim)
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
                    Text("Alamat Lengkap")
                        .padding(.top, 30)
                        .padding(.bottom, 0)
                    TextField("Cth: Alamat rumah, desa & kecamatan", text: $namaPengirim)
                        .padding()
                        .background(lightGreyColor)
                        .cornerRadius(12.0)
                        .keyboardType(.default)
                        .autocapitalization(.none)
                }.padding(.top, -18).font(.system(size: 14, weight: .regular))
                
            }
            
            Text("Penerima")
                .font(.system(size: 24, weight: .bold, design: .rounded))
                .padding(.top, 32)
            VStack{
                VStack(alignment: .leading){
                    Text("Nama Penerima")
                        .padding(.top, 30)
                        .padding(.bottom, 0)
                    TextField("Cth: Syarifudin", text: $namaPengirim)
                        .padding()
                        .background(lightGreyColor)
                        .cornerRadius(12.0)
                        .keyboardType(.default)
                        .autocapitalization(.none)
                }.padding(.top, -18).font(.system(size: 14, weight: .regular))
                VStack(alignment: .leading){
                    Text("Nomor HP Penerima")
                        .padding(.top, 30)
                        .padding(.bottom, 0)
                    TextField("Cth: 081234567890", text: $namaPengirim)
                        .padding()
                        .background(lightGreyColor)
                        .cornerRadius(12.0)
                        .keyboardType(.default)
                        .autocapitalization(.none)
                }.padding(.top, -18).font(.system(size: 14, weight: .regular))
                
                VStack(alignment: .leading){
                    Text("Provinsi Tujuan")
                        .padding(.top, 30)
                        .padding(.bottom, 0)
                    
                    TextField("-pilih provinsi-", text: $namaPengirim)
                        .padding()
                        .background(lightGreyColor)
                        .cornerRadius(12.0)
                        .keyboardType(.default)
                        .autocapitalization(.none)
                }.padding(.top, -18).font(.system(size: 14, weight: .regular))
                
                VStack(alignment: .leading){
                    Text("Kota / Kabupaten Tujuan")
                        .padding(.top, 30)
                        .padding(.bottom, 0)
                    TextField("-pilih kota/kabupaten-", text: $namaPengirim)
                        .padding()
                        .background(lightGreyColor)
                        .cornerRadius(12.0)
                        .keyboardType(.default)
                        .autocapitalization(.none)
                }.padding(.top, -18).font(.system(size: 14, weight: .regular))
                
                VStack(alignment: .leading){
                    Text("Kecamatan Tujuan")
                        .padding(.top, 30)
                        .padding(.bottom, 0)
                    TextField("Cth: Cileungsi", text: $namaPengirim)
                        .padding()
                        .background(lightGreyColor)
                        .cornerRadius(12.0)
                        .keyboardType(.default)
                        .autocapitalization(.none)
                }.padding(.top, -18).font(.system(size: 14, weight: .regular))
                
                VStack(alignment: .leading){
                    Text("Kelurahan Tujuan")
                        .padding(.top, 30)
                        .padding(.bottom, 0)
                    TextField("Cth: Pasir Angin", text: $namaPengirim)
                        .padding()
                        .background(lightGreyColor)
                        .cornerRadius(12.0)
                        .keyboardType(.default)
                        .autocapitalization(.none)
                }.padding(.top, -18).font(.system(size: 14, weight: .regular))
                
                VStack(alignment: .leading){
                    Text("Alamat Lengkap")
                        .padding(.top, 30)
                        .padding(.bottom, 0)
                    TextField("Cth: Alamat rumah, desa & kecamatan", text: $namaPengirim)
                        .padding()
                        .background(lightGreyColor)
                        .cornerRadius(12.0)
                        .keyboardType(.default)
                        .autocapitalization(.none)
                }.padding(.top, -18).font(.system(size: 14, weight: .regular))
                
                VStack(alignment: .leading){
                    Text("Kode Pos (opsional)")
                        .padding(.top, 30)
                        .padding(.bottom, 0)
                    TextField("Cth: 16820", text: $namaPengirim)
                        .padding()
                        .background(lightGreyColor)
                        .cornerRadius(12.0)
                        .keyboardType(.default)
                        .autocapitalization(.none)
                }.padding(.top, -18).font(.system(size: 14, weight: .regular))
                
            }
            
        }
        .padding([.leading, .trailing], 20)
        .background(Color.white)
    }
}


struct listformRounded : Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft,.topRight], cornerRadii: CGSize(width: 25, height: 25))
        return Path(path.cgPath)
    }
}

