//
//  resetPassword.swift
//  UI_Study
//
//  Created by UI UX Trawlbens on 19/06/21.
//


import Foundation
import SwiftUI

struct resetPassword : View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var btnBack: some View {
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Image(systemName: "arrow.left.circle.fill")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .shadow(color: Color.black.opacity(0.2), radius: 1, x: 0.0, y: 0.0)
            }
        .foregroundColor(.white)
    }
    var body: some View {
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
                            .frame(width: 380, height: 280)
                    }
                    .padding(.top, 540)
                }
                
                VStack(alignment:.leading){
                    VStack{
                        Text("Atur ulang kata Sandi")
                    }
                    .font(.system(size: 28, weight: .bold, design: .rounded))
                    .padding(.bottom, 2)
                    
                    VStack{
                        Text("Lengkapi data dibawah ini")
                    }
                    .font(.system(size: 18, weight:.regular, design: .rounded))
                    
                }
                .padding(.trailing, 40)
                .foregroundColor(.white)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
                .padding(.top, 220)
                
                ScrollView(.vertical){
                    HStack{
                        VStack(spacing: 40){
                            coloumResetpassword()
                                .clipShape(RoundedCorner(radius: 40, corners: [.topLeft, .topRight]))
                        }
                        .padding([.leading, .trailing], 10)
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
                    .padding(.top, 320)
                }
               
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: btnBack)
        }
    
        
}


struct resetPassword_Previews : PreviewProvider {
    static var previews: some View {
        resetPassword()
    }
}


struct coloumResetpassword : View {
    
    @State var username : String = ""
    @State var password : String = ""
    @State var number : String = ""
    @State var visible = false
    @State private var checked = true
    
    
    let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)
    
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
                Text("Nomor Whatsapp")
                    .padding(.top, 30)
                    .padding(.bottom, 0)
                TextField("Cth: 08912345678", text: $number)
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
                
                
                HStack(){
                    ZStack {
                        VStack(alignment: .leading){
                            Text("Ulangi Kata Sandi")
                                .padding(.top, 10)
                                .padding(.bottom, 0)
                            ZStack(alignment: .trailing){
                                if self.visible{
                                    TextField("Masukan ulang kata sandi.....", text: self.$password)
                                        .padding()
                                        .background(lightGreyColor)
                                        .cornerRadius(12.0)
                                        .autocapitalization(.none)
                                }
                                else {
                                    SecureField("Masukan Ulang kata sandi.....", text: self.$password)
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
                       
                    }
                    
                }
                
                
                //Sign in
                HStack{
                    Spacer()
                    Button(action:{
                       
                    }){
                        Text("Reset Kata Sandi").bold().font(.callout).foregroundColor(.white)
                    }
                    Spacer()
                }
                .padding()
                .background(Color("primary_1"))
                .cornerRadius(12)
                .padding(.top, 10)
                .padding(.bottom,200)
            }
            .padding([.leading, .trailing], 30)
            
            
        }
        .background(Color.white)
    }
}






