//
//  Login.swift
//  UI_Study
//
//  Created by UI UX Trawlbens on 18/06/21.
//

import Foundation
import SwiftUI

struct Login : View {
    var body: some View {
        NavigationView {
            
        ZStack {
            ZStack{
                ZStack(alignment: .top){
                    
                    Image("IMG_KONTAINER")
                        .resizable()
                        .frame(width: 400, height: 300)
                        .padding(.bottom, 440)
                        .ignoresSafeArea()
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 0)
                        .fill(Color("warna"))
                }
                .background(Color.red)
                .opacity(0.6)
                .ignoresSafeArea()
                .padding([.leading, .trailing], 0)
                ZStack{
                    Rectangle()
                        .fill(Color.white)
                        .frame(width: 380, height: 200)
                }
                .padding(.top, 640)
            }
            VStack(alignment:.leading, spacing: 0){
                VStack{
                    Text("Hallo, selamat datang di TrawlBens,")
//                        .frame(width: 320)
                }
                .font(.system(size: 28, weight: .bold, design: .rounded))
                .padding(.bottom, 2)
                
                VStack{
                    Text("Aplikasi pertama di Indonesia yang sangat membantu kamu dalam pengiriman kargo dan logistik dengan mudah, aman, dan termurah.")
                        .frame(height: 90)
                }
                .font(.system(size: 18, weight:.regular, design: .rounded))
                
            }
            .foregroundColor(.white)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
            .padding(.top, 80)
            .padding(.all, 30)
            
            ScrollView(.vertical){
                HStack{
                    VStack(spacing: 40){
                        coloumLogin()
                            .clipShape(RoundedCorner(radius: 40, corners: [.topLeft, .topRight]))
                    }
                    .padding([.leading, .trailing], 10)
                }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
                .padding(.top, 300)
            }
           
        }
            
    }
        
    }
}


struct Login_Previews : PreviewProvider {
    static var previews: some View {
        Login()
    }
}


struct coloumLogin : View {
    
    @EnvironmentObject var authUser : authUser
    
    @State var username : String = ""
    @State var password : String = ""
    @State var visible = false
    @State var resetPassword = false
    
    let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)
    
    func cekLogin() {
        if(username == "Admin" && password == "123"){
            authUser.isLoggedin = true
        } else {
            authUser.isLoggedin = false
            authUser.isCorrect = false
        }
    }
    
    var body: some View {
        VStack{
            VStack{
                Rectangle()
                    .fill(lightGreyColor)
                    .frame(width: 50, height: 4)
                    .cornerRadius(20)
                    .padding(.bottom, -4)
                Rectangle()
                    .fill(lightGreyColor)
                    .frame(width: 50, height: 4)
                    .cornerRadius(20)
            }
            .padding(.top, 16)
            VStack(alignment: .leading){
                Text("Email")
                    .padding(.top, 30)
                    .padding(.bottom, 0)
                TextField("Cth: trawlbens@gmail.com", text: $username)
                    .padding()
                    .background(lightGreyColor)
                    .cornerRadius(12.0)
                    .keyboardType(.emailAddress)
                    .autocapitalization(.none)
                
                
                Text("Kata Sandi")
                    .padding(.top, 10)
                    .padding(.bottom, 0)
                
                HStack(){
                    ZStack(alignment: .trailing){
                        if self.visible{
                            TextField("Masukan kata sandi", text: self.$password)
                                .padding()
                                .background(lightGreyColor)
                                .cornerRadius(12.0)
                                .autocapitalization(.none)
                        }
                        else {
                            SecureField("Masukan kata sandi", text: self.$password)
                                .padding()
                                .background(lightGreyColor)
                                .cornerRadius(12.0)
                                .autocapitalization(.none)
                        }
                        Button(action: {
                            self.visible.toggle()
                            
                        }) {
                            Image(systemName: self.visible ? "eye.slash.fill" : "eye.fill")
                        }
                        .padding(16)
                        .foregroundColor(.gray)
                    }
                }
                
                HStack{
                    NavigationLink(destination: UI_Study.resetPassword()) {
                            Text("Lupa password?")
                        Spacer()
                    }
                }
                .padding([.top, .bottom], 14)
                .foregroundColor(.red)
                
                
                //Sign in
                HStack{
                    NavigationLink(destination: home()){
                    HStack{
                        Spacer()
                            Text("Masuk").bold().font(.callout).foregroundColor(.white)
                        Spacer()
                    }
                    .padding()
                    .background(Color("primary_1"))
                    .cornerRadius(12)
                    .padding(.top, 0)
                    .padding(.bottom, 10)
                    }
                }
                
                HStack{
                    NavigationLink(destination: Registration()){
                    HStack{
                        Spacer()
                            Text("Daftar").bold().font(.callout).foregroundColor(Color("primary_1"))
                        
                        Spacer()
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(12)
                    .shadow(color: Color.black.opacity(0.5), radius: 1, x: 0.0, y: 0.0)
                    }
                }
                
            }
            .padding([.leading, .trailing], 30)
            
            VStack{
                Text("atau masuk dengan")
            }
            .foregroundColor(.gray)
            .padding([.top, .bottom], 8)
            
            HStack{
                Button(action: {}){
                    Image("facebook-f-brands")
                    Text("Facebook")
                }
                .padding([.leading, .trailing], 30)
                .padding([.top, .bottom], 15)
                .background(Color.white)
                .cornerRadius(12)
                .shadow(color: Color.black.opacity(0.5), radius: 1, x: 0.0, y: 0.0)
                .padding(.trailing, 8)
                
                Button(action: {}){
                    Image("GOOGLE")
                    Text("Google")
                }
                .padding([.leading, .trailing], 30)
                .padding([.top, .bottom], 15)
                .background(Color.white)
                .cornerRadius(12)
                .shadow(color: Color.black.opacity(0.5), radius: 1, x: 0.0, y: 0.0)
                .padding(.leading, 8)
            }
            .padding(.bottom, 220)
        }
        .background(Color.white)
    }
}


//.edgesIgnoringSafeArea(.bottom)
