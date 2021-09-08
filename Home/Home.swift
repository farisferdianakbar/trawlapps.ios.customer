//
//  Home.swift
//  UI_Study
//
//  Created by UI UX Trawlbens on 15/06/21.
//

import Foundation
import SwiftUI

struct home : View {
    @EnvironmentObject var userAuth : authUser
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View{
        ZStack{
            TabView {
                //icon menu 1
                beranda()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Beranda")

                    }


                //icon menu 2
                pesanan()
                    .tabItem {
                        Image(systemName: "gobackward")
                        Text("Pesanan")

                    }


                //icon menu 3
                Pesan_fix()
//                pesan()
                    .tabItem {
                        Image(systemName: "bubble.left.fill")
                        Text("Bantuan")
                    }

                //icon menu 4
                porfilTest()
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("Profil")
                    }

            }
            .accentColor(Color("warna"))
            .animation(Animation.interpolatingSpring(stiffness: 330, damping: 20.0, initialVelocity: 7))
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}



struct beranda : View {
    var body: some View {
        coba_menu()
    }
}

struct coba_menu: View {
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
                        Image("LOGO PUTIH PANJANG")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 140, height: 24)
                    
                    
                    Spacer(minLength: 0)
                    
                    HStack{
                        NavigationLink(destination: UI_Study.notificationPage()){
                        Image(systemName: "bell.fill")
                        }
                        .padding(10)
                        .foregroundColor(.white)
                    }
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
//                                ForEach(scroll_Tabs, id:\.self){tab in TabButton(title: tab, selectedTab: $selectedTab, animation: animation)
//                                }
                            }
                            .padding(EdgeInsets.init(top: 1, leading: -50, bottom: 1, trailing: 0))
                    }
                    .navigationBarHidden(true)
                    .navigationBarBackButtonHidden(true)
                }
                .frame(width: geo.size.width)
                .background(Color("warna"))
            }
            VStack{
                ScrollView(.vertical, showsIndicators: false){
                    VStack{
                        ZStack{
                            VStack{
                                TopLayout()
                                    .padding(EdgeInsets.init(top: 40, leading: 00, bottom: 60, trailing: 0))
                                    .frame(width: geo.size.width)
                                    .background(Color("warna"))
                                    .clipShape(RoundedCorner(radius: 30, corners: [.bottomLeft, .bottomRight]))
                            }
                            .padding(.top, -30)
                            
                            VStack{
                                Tracking()
                            }
                        }
                        
                        Layanan()
                         
                    }
                }
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
        .navigationBarTitle("", displayMode: .inline)
    }
}

extension UINavigationController{
    override open func viewDidLoad() {
        super.viewDidLoad()
        
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor(Color("warna"))
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        navigationController?.navigationBar.tintColor = .white
                navigationController?.navigationBar.standardAppearance = appearance
                navigationController?.navigationBar.compactAppearance = appearance
                navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        navigationBar.standardAppearance = appearance
        
    }
}

struct content: View {
    var body: some View {
        GeometryReader {
            geo in
            ScrollView(.vertical, showsIndicators: false){
                VStack{
                    ZStack{
                        VStack{
                            TopLayout()
                                .padding(EdgeInsets.init(top: 40, leading: 00, bottom: 60, trailing: 0))
                                .frame(width: geo.size.width)
                                .background(Color("warna"))
                                .clipShape(RoundedCorner(radius: 30, corners: [.bottomLeft, .bottomRight]))
                        }
                        .padding(.top, -30)
                        
                        VStack{
                            Tracking()
                        }
                    }
                    
                    Layanan()
                     
                }
            }
            
            
        }
    }
    
}




//Rounded shape
struct RoundedCorner : Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        
        return Path(path.cgPath)
    }
}

struct TopLayout: View {
    var body: some View {
        VStack{
            //TEXT
            VStack{
                HStack{
                    Text("Hallo, Faris...")
                        
                        .font(.system(size: 24, weight: .bold, design: .rounded))
                    Spacer()
                        .padding()
                        .cornerRadius(20)
                    
                }
                .frame(height: 30)
                .padding(.leading, 30)
                .padding(.top, 0)
                
                HStack{
                    Text("Kami siap melayanin pengiriman barang anda")
                        .font(.system(size: 18, weight: .regular, design: .rounded))
                    Spacer()
                        .background(Color.white)
                        .cornerRadius(20)
                }
                .padding(.top, 1)
                .padding(.leading, 30)
                
            }.foregroundColor(.white)
            .padding(.top, 4)
            
            
        }
        
    }
}

struct Tracking: View {
    var body: some View {
        HStack(spacing: 12.0){
            Spacer()
            NavigationLink(destination: UI_Study.cekTarif()){
                HStack{
                    Spacer()
                    Image(systemName: "doc.plaintext")
                        .resizable()
                        .frame(width: 25, height: 25)
                    Spacer()
                    Text("Cek Tarif")
                        .font(.system(size: 18, weight: .bold, design: .rounded))
                    Spacer()
                }
                .foregroundColor(Color("hijau"))
                
            }
            .frame(height: 55)
            .background(Color.white)
            .cornerRadius(16)
            
            NavigationLink(destination: UI_Study.lacakResi()){
                HStack{
                    Spacer()
                    Image(systemName: "location.circle")
                        .resizable()
                        .frame(width: 25, height: 25)
                    Spacer()
                    Text("Lacak Resi")
                        .font(.system(size: 18, weight: .bold, design: .rounded))
                    Spacer()
                }
                .foregroundColor(Color("hijau"))
            }
            .frame(height: 55)
            .background(Color.white)
            .cornerRadius(16)
            Spacer()
        }
        .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0.0, y: 0.0)
        .padding(.top, 150)
    }
}
 
struct Layanan: View {
    var body: some View {
        HStack(spacing: 20){
            VStack{
                NavigationLink(destination: UI_Study.trawlpackStep_1()){
                        HStack{
                            Spacer()
                            Image("Trawlpack-1")
                                .resizable()
                                .frame(width: 40, height: 42)
                            Spacer()
                        }
                    
                    
                    .foregroundColor(.red)
                    .frame(width: 80, height: 80, alignment: .center)
                    .background(Color.white)
                    .cornerRadius(16)
                    .shadow(color: Color.black.opacity(0.5), radius: 1, x: 0.0, y: 0.0)
                }
                
                
                Text("Trawlpack")
                    .font(.system(size: 16, weight: .regular, design: .rounded))
                    .padding(.top, 4)
                    .padding([.leading, .trailing], 0)
                    .padding(.top, 4) .padding(.bottom, 30)
            }
            
            VStack{
                Button(action: {}){
                    HStack{
                        Spacer()
                        Image("Trawlpack-1")
                            .resizable()
                            .frame(width: 40, height: 42)
                        Spacer()
                    }
                }
                .foregroundColor(.red)
                .frame(width: 80, height: 80, alignment: .center)
                .background(Color.white)
                .cornerRadius(16)
                .shadow(color: Color.black.opacity(0.5), radius: 1, x: 0.0, y: 0.0)
                
                Text("TrawlCarrier")
                    .font(.system(size: 16, weight: .regular, design: .rounded))
                    .padding(.top, 4)
                    .padding([.leading, .trailing], 0)
                    .padding(.top, 4) .padding(.bottom, 30)
            }
            .padding(.init(top: 0, leading: 4, bottom: 0, trailing: 4))
            
            
            VStack{
                Button(action: {}){
                    HStack{
                        Spacer()
                        Image("Trawlpack-1")
                            .resizable()
                            .frame(width: 40, height: 42)
                        Spacer()
                    }
                }
                .foregroundColor(.red)
                .frame(width: 80, height: 80, alignment: .center)
                .background(Color.white)
                .cornerRadius(16)
                .shadow(color: Color.black.opacity(0.5), radius: 1, x: 0.0, y: 0.0)
                
                Text("TrawlHeavy")
                    .font(.system(size: 16, weight: .regular, design: .rounded))
                    .padding(.top, 4)
                    .padding([.leading, .trailing], 0)
                    .padding(.top, 4) .padding(.bottom, 30)
            }
            
        }
        .padding(.top, 18)
        .padding([.leading, .trailing], 30)
        .padding(.top, 10) .padding(.bottom, 0)
        
        
        HStack(spacing: 30){
            
            VStack{
                Button(action: {}){
                    HStack{
                        Spacer()
                        Image("Trawlpack-1")
                            .resizable()
                            .frame(width: 40, height: 42)
                        Spacer()
                    }
                }
                .foregroundColor(.red)
                .frame(width: 80, height: 80, alignment: .center)
                .background(Color.white)
                .cornerRadius(16)
                .shadow(color: Color.black.opacity(0.5), radius: 1, x: 0.0, y: 0.0)
                
                Text("TrawlFeet")
                    .font(.system(size: 16, weight: .regular, design: .rounded))
                    .padding(.top, 4)
                    .padding([.leading, .trailing], 0)
                    .padding(.top, 4) .padding(.bottom, 30)
            }
            
            VStack{
                Button(action: {}){
                    HStack{
                        Spacer()
                        Image("Trawlpack-1")
                            .resizable()
                            .frame(width: 40, height: 42)
                        Spacer()
                    }
                }
                .foregroundColor(.red)
                .frame(width: 80, height: 80, alignment: .center)
                .background(Color.white)
                .cornerRadius(16)
                .shadow(color: Color.black.opacity(0.5), radius: 1, x: 0.0, y: 0.0)
                
                Text("TrawlTruck")
                    .font(.system(size: 16, weight: .regular, design: .rounded))
                    .padding(.top, 4)
                    .padding([.leading, .trailing], 0)
                    .padding(.top, 4) .padding(.bottom, 30)
            }
            
            VStack{
                Button(action: {}){
                    HStack{
                        Spacer()
                        Image("Trawlpack-1")
                            .resizable()
                            .frame(width: 40, height: 42)
                        Spacer()
                    }
                }
                .foregroundColor(.red)
                .frame(width: 80, height: 80, alignment: .center)
                .background(Color.white)
                .cornerRadius(16)
                .shadow(color: Color.black.opacity(0.5), radius: 1, x: 0.0, y: 0.0)
                
                Text("TrawlBoat")
                    .font(.system(size: 16, weight: .regular, design: .rounded))
                    .padding(.top, 4)
                    .padding([.leading, .trailing], 0)
                    .padding(.top, 4) .padding(.bottom, 30)
                
            }
            
        }
        .padding(.top, 0)
        .padding([.leading, .trailing], 30)
        .padding(.top, 0) .padding(.bottom, 0)
        
        HStack(spacing: 30){
            
            VStack{
                Button(action: {}){
                    HStack{
                        Spacer()
                        Image("Trawlpack-1")
                            .resizable()
                            .frame(width: 40, height: 42)
                        Spacer()
                    }
                }
                .foregroundColor(.red)
                .frame(width: 80, height: 80, alignment: .center)
                .background(Color.white)
                .cornerRadius(16)
                .shadow(color: Color.black.opacity(0.5), radius: 1, x: 0.0, y: 0.0)
                
                Text("TrawlFeet")
                    .font(.system(size: 16, weight: .regular, design: .rounded))
                    .padding(.top, 4)
                    .padding([.leading, .trailing], 0)
                    .padding(.top, 4) .padding(.bottom, 30)
            }
            
            VStack{
                Button(action: {}){
                    HStack{
                        Spacer()
                        Image("Trawlpack-1")
                            .resizable()
                            .frame(width: 40, height: 42)
                        Spacer()
                    }
                }
                .foregroundColor(.red)
                .frame(width: 80, height: 80, alignment: .center)
                .background(Color.white)
                .cornerRadius(16)
                .shadow(color: Color.black.opacity(0.5), radius: 1, x: 0.0, y: 0.0)
                
                Text("TrawlTruck")
                    .font(.system(size: 16, weight: .regular, design: .rounded))
                    .padding(.top, 4)
                    .padding([.leading, .trailing], 0)
                    .padding(.top, 4) .padding(.bottom, 30)
            }
            
        }
        .padding(.init(top: 0, leading: -110, bottom: 0, trailing: 0))
        .padding([.leading, .trailing], 30)
        .padding(.top, 0) .padding(.bottom, 0)
        
        
    }
    
    
}


struct informasiTerbaru: View {
    var body: some View {
        //MARK: PREVENTION
        HStack{
            Text("Informasi Terbaru")
                .font(.system(size: 20, weight: .bold, design: .rounded))
                Spacer()
        }
        .padding([.leading, .trailing], 30)
        .padding(.top, 40)
        
        Spacer()
        
        
        VStack(alignment:.leading){
            //FOTO SEPEDA
            ZStack(alignment: .topTrailing ){
                Image("berita_1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 160)
                    .clipped()
                
                Button(action: {print("OK")}){
                   Image(systemName: "heart")
                    .padding()
                    .foregroundColor(.red)
                }
            }
            
            Text("Nama Produk")
                .font(.title)
                .bold()
                .padding(.leading)
                .padding(.trailing)
            
            Text("Rp.10000000")
                .font(.title)
                .foregroundColor(.red)
                .bold()
                .padding(.leading)
                .padding(.trailing)
            
            HStack{
                Image(systemName: "mappin.circle")
                Text("Lokasi")
                    
            }
            .padding(.leading)
            .padding(.trailing)
            
            
            HStack{
                HStack{
                        Image(systemName: "star.fill")
                    }
                }.foregroundColor(.yellow)
                Text("ASDASDASD")
            }
            .padding(.leading)
            .padding(.trailing)
            .padding(.bottom)
            
                
        .background(Color("Color"))
        .cornerRadius(15)
    }
            }
    

class HostingController<home>: UIHostingController<home> where home: View {
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}


