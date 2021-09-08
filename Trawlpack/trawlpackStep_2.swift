import Foundation
import SwiftUI

struct trawlpackStep_2 : View {
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
                    listFormtrawlpack_2()
                }
            }
        }
        .navigationBarTitle("Informasi Barang Pengiriman", displayMode: .inline)
        .navigationBarItems(leading: btnBack)
        .navigationBarBackButtonHidden(true)
        
    }
}

struct trawlpackStep_2_Previews: PreviewProvider {
    static var previews: some View{
        trawlpackStep_2()
    }
}


struct listFormtrawlpack_2 : View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            ZStack{
                HStack{
                    VStack(spacing: 0){
                        coloumForm_2()
                    }
                    
                    //MARK: LABEL
                    //                .padding(.top, -180)
                    
                }
            }
            
        }
        .navigationBarTitle(Text ("Informasi Barang Pengiriman"), displayMode: .inline)
        .navigationBarBackButtonHidden(true)
        
        HStack{
            NavigationLink(destination: trawlpackStep_3()){
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


struct coloumForm_2 : View {
    
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
    
    @State var show = false
    var body: some View{
        ZStack{
            VStack(alignment: .leading){
                Text("Informasi")
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                    .padding(.top, 20)
                VStack{
                    VStack(alignment: .leading){
                        VStack{
                            Text("*Tidak termasuk packing dan asuransi")
                                .padding(.top, 30)
                                .padding(.bottom, 0)
                                .foregroundColor(.red)
                        }
                        VStack{
                            Text("Silahkan lengkapi detail barang kiriman Anda pada kolom di bawah ini lalu anda bisa teruskan ke proses selanjutnya")
                                .padding(.top, 30)
                                .padding(.bottom, 0)
                                .foregroundColor(.black)
                        }
                        .padding(.top, -28)
                    }.padding(.top, -18).font(.system(size: 14, weight: .regular))
                }.padding(.bottom)
                
                Divider()
                
                VStack{
                    VStack(alignment: .leading){
                        HStack{
                            Text("Deskripsi Barang")
                                .font(.system(size: 16, weight: .bold, design: .rounded))
                            Spacer()
                            Image("ic_more_vert_24px")
                        }.padding(.top, 8)
                        Text("Buku 1 Dus")
                            .font(.system(size: 14, weight: .regular))
                            .padding(.top, 4)
                            .padding(.bottom,0)
                        VStack {
                            HStack(alignment: .top){
                                VStack(alignment: .leading){
                                    HStack(alignment: .top){
                                        Text("Perkiraan harga barang")
                                            .font(.system(size: 14, weight: .regular))
                                            .frame(alignment: .topLeading)
                                        Spacer()
                                        VStack{
                                            Text("Rp 200.000")
                                                .font(.system(size: 14, weight: .regular))
                                                .frame(height: .none, alignment: .topTrailing)
                                        }
                                    }
                                    HStack(alignment: .top){
                                        Text("Ukuran")
                                            .font(.system(size: 14, weight: .regular))
                                            .frame(alignment: .topLeading)
                                        Spacer()
                                        VStack{
                                            Text("30 x 20 x 12 cm")
                                                .font(.system(size: 14, weight: .regular))
                                                .frame(height: .none, alignment: .topTrailing)
                                        }
                                    }
                                    HStack(alignment: .top){
                                        Text("Berat Volume")
                                            .font(.system(size: 14, weight: .regular))
                                            .frame(alignment: .topLeading)
                                        Spacer()
                                        VStack{
                                            Text("20 Kg")
                                                .font(.system(size: 14, weight: .regular))
                                                .frame(height: .none, alignment: .topTrailing)
                                        }
                                    }
                                    HStack(alignment: .top){
                                        Text("Berat Aktual")
                                            .font(.system(size: 14, weight: .regular))
                                            .frame(alignment: .topLeading)
                                        Spacer()
                                        VStack{
                                            Text("20 Kg")
                                                .font(.system(size: 14, weight: .regular))
                                                .frame(height: .none, alignment: .topTrailing)
                                        }
                                    }
                                    HStack(alignment: .top){
                                        Text("Jumlah Paket")
                                            .font(.system(size: 14, weight: .regular))
                                            .frame(alignment: .topLeading)
                                        Spacer()
                                        VStack{
                                            Text("1")
                                                .font(.system(size: 14, weight: .regular))
                                                .frame(height: .none, alignment: .topTrailing)
                                        }
                                    }
                                    HStack(alignment: .top){
                                        Text("Berat yang ditanggung")
                                            .font(.system(size: 14, weight: .regular))
                                            .frame(alignment: .topLeading)
                                        Spacer()
                                        VStack{
                                            Text("20 Kg")
                                                .font(.system(size: 14, weight: .regular))
                                                .frame(height: .none, alignment: .topTrailing)
                                        }
                                    }
                                }
                                .padding(.trailing, 4)
                                
                                
                            }
                        }
                        .padding(.top, 4)
                        .padding(.bottom)
                        Divider()
                    }
                    
                    VStack{
                        HStack{
                            VStack{
                                Text("Total Berat yang ditanggung")
                                    .font(.system(size: 16, weight: .bold, design: .rounded))
                                    .padding(.top, 12)
                                
                            }
                            Spacer()
                            VStack(alignment: .trailing){
                                Text("1000 Kg")
                                    .font(.system(size: 16, weight: .regular, design: .rounded))
                                    .padding(.top, 12)
                                    .frame(width: 70, height: .none ,alignment: .topTrailing)
                            }
                        }
                        .padding(.bottom)
                        Divider()
                    }
                    HStack{
                        VStack{
                            Button(action: {
                                self.show.toggle()
                            }){
                                HStack(alignment: .center){
                                    Spacer()
                                    Image(systemName: "plus")
                                        .resizable()
                                        .frame(width: 16, height: 16)
                                        .foregroundColor(.white)
                                    Text("Tambah Barang").bold().font(.callout).foregroundColor(.white)
                                    Spacer()
                                }
                                .padding()
                                .background(Color("primary_1"))
                                .cornerRadius(12)
                                .padding(.top, 0)
                                .padding(.bottom, 10)
                            }
                        }
                        
                    }
                    .padding(.top, 12)
                    .background(Color.white)
                }
                .padding(.all, 20)
                .frame(width: 340, height: .none, alignment: .center)
                .background(Color.white)
                .cornerRadius(16)
                .shadow(color: Color.black.opacity(0.5), radius: 1, x: 0.0, y: 0.0)
                .padding(.top, 14)
                
                Text("Foto Barang")
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                    .padding(.top, 20)
                
                HStack{
                    ScrollView(.horizontal){
                        HStack{
                            Image("gue_ganteng_app")
                                .resizable()
                                .frame(width: 80, height: 80)
                                .cornerRadius(14)
                            Image("gue_ganteng_app")
                                .resizable()
                                .frame(width: 80, height: 80)
                                .cornerRadius(14)
                            Image("gue_ganteng_app")
                                .resizable()
                                .frame(width: 80, height: 80)
                                .cornerRadius(14)
                            Image("gue_ganteng_app")
                                .resizable()
                                .frame(width: 80, height: 80)
                                .cornerRadius(14)
                            Image(systemName: "plus")
                                .resizable()
                                .padding(.all, 30)
                                .foregroundColor(.white)
                                .background(Color("hijau"))
                                .cornerRadius(14)
                                .frame(width: 80, height: 80)
                        }
                        
                    }
                }
                .frame(alignment: .topLeading)
                
                Text("Rekomendasi Armada Penjemputan")
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                    .padding(.top, 20)
                
                VStack{
                    HStack{
                        VStack{
                            Image("2. pick up")
                                .resizable()
                                .scaledToFit()
                                .frame(height:380, alignment: .center)
                        }.frame(width: 100, height: 80, alignment: .center)
                        
                        
                        VStack(alignment: .leading){
                            Text("Sepeda Motor")
                                .font(.system(size: 16, weight: .bold))
                                .padding(.bottom, 2)
                            Text("Dimensi Max : 40 x 36 x 55")
                                .font(.system(size: 14, weight: .regular))
                            Text("Berat Max : 40 kg")
                                .font(.system(size: 14, weight: .regular))
                        }
                        .frame(width: 180, height: 80, alignment: .leading)
                        
                        Spacer()
                        
                        VStack(alignment: .trailing){
                            Image(systemName: "circle")
                                .foregroundColor(.gray)
                        }
                        .padding(.trailing, 10)
                    }
                    
                    Divider()
                    
                    HStack{
                        VStack{
                            Image("5. CDE engkel double box")
                                .resizable()
                                .scaledToFit()
                                .frame(height:380, alignment: .center)
                        }.frame(width: 100, height: 80, alignment: .center)
                        
                        
                        VStack(alignment: .leading){
                            Text("Sepeda Motor")
                                .font(.system(size: 16, weight: .bold))
                                .padding(.bottom, 2)
                            Text("Dimensi Max : 40 x 36 x 55")
                                .font(.system(size: 14, weight: .regular))
                            Text("Berat Max : 40 kg")
                                .font(.system(size: 14, weight: .regular))
                        }
                        .frame(width: 180, height: 80, alignment: .leading)
                        
                        Spacer()
                        
                        VStack(alignment: .trailing){
                            Image(systemName: "circle")
                                .foregroundColor(.gray)
                        }
                        .padding(.trailing, 10)
                    }
                    
                    Divider()
                    
                    HStack{
                        VStack{
                            Image("5. CDE engkel double box")
                                .resizable()
                                .scaledToFit()
                                .frame(height:380, alignment: .center)
                        }.frame(width: 100, height: 80, alignment: .center)
                        
                        
                        VStack(alignment: .leading){
                            Text("Sepeda Motor")
                                .font(.system(size: 16, weight: .bold))
                                .padding(.bottom, 2)
                            Text("Dimensi Max : 40 x 36 x 55")
                                .font(.system(size: 14, weight: .regular))
                            Text("Berat Max : 40 kg")
                                .font(.system(size: 14, weight: .regular))
                        }
                        .frame(width: 180, height: 80, alignment: .leading)
                        
                        Spacer()
                        
                        VStack(alignment: .trailing){
                            Image(systemName: "circle")
                                .foregroundColor(.gray)
                        }
                        .padding(.trailing, 10)
                    }
                    
                    Divider()
                    
                    HStack{
                        VStack{
                            Image("5. CDE engkel double box")
                                .resizable()
                                .scaledToFit()
                                .frame(height:380, alignment: .center)
                        }.frame(width: 100, height: 80, alignment: .center)
                        
                        
                        VStack(alignment: .leading){
                            Text("Sepeda Motor")
                                .font(.system(size: 16, weight: .bold))
                                .padding(.bottom, 2)
                            Text("Dimensi Max : 40 x 36 x 55")
                                .font(.system(size: 14, weight: .regular))
                            Text("Berat Max : 40 kg")
                                .font(.system(size: 14, weight: .regular))
                        }
                        .frame(width: 180, height: 80, alignment: .leading)
                        
                        Spacer()
                        
                        VStack(alignment: .trailing){
                            Image(systemName: "circle")
                                .foregroundColor(.gray)
                        }
                        .padding(.trailing, 10)
                    }
                    
                    Divider()
                    
                    
                }
                
            }
            .padding([.leading, .trailing], 20)
            .background(Color.white)
            
            VStack{
                Spacer()
//                tambahkanBarang().offset(y: self.show ? (UIApplication.shared.windows.last?.safeAreaInsets.bottom)! + 15 : UIScreen.main.bounds.height)
                tambahkanBarang().offset(y: self.show ? 0 : UIScreen.main.bounds.height)
            }
//            .background(Color(UIColor.label.withAlphaComponent(self.show ? 0.2 : 0)).edgesIgnoringSafeArea(.all))
            .background((self.show ? Color.black.opacity(0.3) : Color.clear).edgesIgnoringSafeArea(.all)
                .onTapGesture {
                self.show.toggle()
            })
            
            .edgesIgnoringSafeArea(.bottom)
        }
        .background(Color.yellow).edgesIgnoringSafeArea(.all)
        .animation(.default)
    }
}


