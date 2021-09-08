//
//  Profil.swift
//  UI_Study
//
//  Created by UI UX Trawlbens on 25/06/21.
//

import Foundation
import SwiftUI

struct porfilTest : View {
    
    @State var currentTab = "All"
    @State var selectedTab = scroll_Tabs[0]
    @Namespace var animation
    @State var show = false
    @State var txt = ""
    
    var body: some View {
        GeometryReader {
            geo in
        VStack(spacing: 0){
            ZStack{
                HStack {
                        Text("Profil")
                            .fontWeight(.bold)
                            .font(.title)
                            .foregroundColor(.white)
                    
                    
                    Spacer(minLength: 0)
                }
                .padding(.top, 65)
                .padding(.horizontal)
                .padding(.bottom, 20)
                .background(Color("warna"))
            }
            ZStack{
                ScrollView(.vertical){
                    pageProfil()
                }
            }
//            ZStack{
//                topLayoutProfil()
//                    .padding(EdgeInsets.init(top: 50, leading: 00, bottom: 60, trailing: 0))
//                    .frame(width: geo.size.width)
//                    .background(Color("warna"))
//                    .clipShape(RoundedCorner(radius: 30, corners: [.bottomLeft, .bottomRight]))
//            }.padding(.top, 0)
        }
        .edgesIgnoringSafeArea(.top)
    }
        .navigationBarTitle("", displayMode: .inline)
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

//MARK: SDAS

struct profil: View {
    var body: some View {
        ZStack{
            ScrollView{
                navbarProfil()
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct profilPage : View {

    var body: some View {
        ZStack{
            NavigationLink(destination: UI_Study.trawlpackStep_1()){
            }
            VStack{
                navbarProfil()
            }
        }
        .edgesIgnoringSafeArea(.top)
        .accentColor(.yellow)
    }
}




struct navbarProfil : View {
    var body: some View{
        VStack{
            HStack{
                Text("Profil")
                    .fontWeight(.bold)
                    .font(.title)
                    .foregroundColor(.white)
                Spacer(minLength: 0)
            }
            .padding(.top, 65)
            .padding(.horizontal)
            .padding(.bottom, 20)
            .background(Color("warna"))
        }
    }
}

struct pageProfil: View {
    var body: some View{
        VStack{
            ZStack{
                Image("gue_ganteng_app")
                    .resizable()
                    .frame(width: 100, height: 100, alignment: .center)
                    .clipShape(Circle())
                VStack{
                    Image("ic_camera_alt_24px")
                        .resizable()
                        .frame(width: 20, height: 16, alignment: .center)
                        .padding(.all, 10)
                        .background(Color.white)
                        .clipShape(Circle())
                        .frame(width: 40, height: 40, alignment: .center)
                }
                .frame(width: 100, height: 100, alignment: .center)
                .offset(x: 28.0, y: 24.0)
                .cornerRadius(16)
                .shadow(color: Color.black.opacity(0.5), radius: 1, x: 0.0, y: 0.0)
                .padding(.top, 14)


            }
            NavigationLink(destination: profilEdit()){
                Text("Edit Profil")
                    .underline()
                    .padding(.top,10)
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(Color("hijau"))
                    .padding(.bottom, 20)
            }
            

            VStack{
                HStack{
                    Text("Nama")
                    .font(.system(size: 14, weight: .bold, design: .rounded))
                    Spacer()
                    Text("Faris Ferdian Akbar")
                }
                Divider()
                HStack{
                    Text("No. Telp")
                    .font(.system(size: 14, weight: .bold, design: .rounded))
                    Spacer()
                    Text("085694455935")
                }
                Divider()
                HStack{
                    Text("Email")
                    .font(.system(size: 14, weight: .bold, design: .rounded))
                    Spacer()
                    Text("FarisFerdianA@gmail.com")
                }
                Divider()
                HStack(alignment: .top){
                    Text("Alamat")
                    .font(.system(size: 14, weight: .bold, design: .rounded))
                    Spacer()
                    Text("Jl. Soekarno No.1, Kel. Indarung, Kec. Lubuk Kilangan, Padang, 251212.")
                        .padding(.leading, 12)
                }
            }
            .padding(.all, 20)
            .frame(width: 340, height: .none, alignment: .center)
            .background(Color.white)
            .cornerRadius(16)
            .shadow(color: Color.black.opacity(0.5), radius: 1, x: 0.0, y: 0.0)
            .padding(.top, 14)

            VStack {
                HStack{
                    Text("Keluar")
                    Spacer()
                    Image(systemName: "chevron.right")
                }
            }
            .padding(.all, 20)
            .frame(width: 340, height: .none, alignment: .center)
            .background(Color.white)
            .cornerRadius(16)
            .shadow(color: Color.black.opacity(0.5), radius: 1, x: 0.0, y: 0.0)
            .padding(.top, 14)
        }
        .padding(.top, 40)
        .frame(width: 350, height: .none, alignment: .center)
    }
}

struct profil_Previews: PreviewProvider {
    static var previews: some View{
        porfilTest()
    }
}

struct profileRounded : Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: .topLeft, cornerRadii: CGSize(width: 35, height: 35))
        return Path(path.cgPath)
    }
}

struct topLayoutProfil: View {
    var body: some View {
        VStack{
            //TEXT
            VStack{
                
            }.foregroundColor(.white)
            .padding(.top, 4)
            
            
        }
        
    }
}
