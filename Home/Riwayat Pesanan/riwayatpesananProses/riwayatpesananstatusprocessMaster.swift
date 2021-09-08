//
//  riwayatpesananDetails.swift
//  UI_Study
//
//  Created by UI UX Trawlbens on 01/07/21.
//

import Foundation
import SwiftUI

struct riwayatpesananstatusProcess: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            ZStack{
                Color(.white).edgesIgnoringSafeArea(.top)
                VStack{
                    listPesanan()
                        .background(Color.white)
                }
            }
        }
        .navigationBarTitle("Riwayat Pesanan", displayMode: .inline)
        .navigationBarBackButtonHidden(true)
        
    }
}

struct listPesanan: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
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
                        VStack{
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
                        if !self.show{
                            Text("TDX127328283")
                                .font(.system(size: 16, weight: .bold, design: .rounded))
                                .font(.title)
                                .foregroundColor(.white)
                        }
                        
                        Spacer(minLength: 0)
                        
                        HStack{
                            Text("Ringkasan Order")
                                .foregroundColor(.white)
                                .cornerRadius(20)
                                .font(.system(size: 14, weight: .medium))
                            Image(systemName: "chevron.right")
                                .foregroundColor(Color.white)
                            
                        }
                        .cornerRadius(20)
                    }
                    .padding(.top, (UIApplication.shared.windows.first?.safeAreaInsets.top)! + 15)
                    .padding(.horizontal)
                    .padding(.bottom, 10)
                    .background(Color("oren"))
                }
                
                
                ZStack{
                    VStack{
                        HStack{
                            VStack(alignment: .leading){
                                HStack{
                                    VStack{
                                        Text("Dari")
                                    }
                                    .font(.system(size: 14, weight: .bold, design: .rounded))
                                    .padding(.top, 1)
                                    .foregroundColor(Color.white)
                                    
                                    VStack{
                                        Text("Prum Nurma RT 02 Kota Bandung, Kec.st")
                                    }
                                    .font(.system(size: 14, weight: .regular, design: .rounded))
                                    .padding(.top, 1)
                                    .foregroundColor(Color.white)
                                }
                                .padding(.trailing, 15)
                                
                                HStack{
                                    VStack{
                                        Text("Ke")
                                    }
                                    .font(.system(size: 14, weight: .bold, design: .rounded))
                                    .padding(.top, 1)
                                    .foregroundColor(Color.white)
                                    
                                    VStack{
                                        Text("Prum Nurma RT 02 Kota Bandung, Kec. Selamat")
                                            .padding(.leading, 12)
                                    }
                                    .font(.system(size: 14, weight: .regular, design: .rounded))
                                    .padding(.top, 1)
                                    .foregroundColor(Color.white)
                                }
                                .padding(.trailing, 15)
                            }
                            .padding(.leading, -8)
                            .navigationBarHidden(true)
                            .navigationBarBackButtonHidden(true)
                        }
                        
                    }
                    .padding()
                    .frame(width: geo.size.width)
                    .background(Color("oren"))
                }
                VStack{
                    ScrollView(.vertical, showsIndicators: false){
                        riwayatPakettelahdiproses()
                    }
                }
            }
            .edgesIgnoringSafeArea(.top)
        }
        .navigationBarTitle("", displayMode: .inline)
        
    }
}

struct riwayatpesananDetails_Previews: PreviewProvider {
    static var previews: some View {
        riwayatpesananstatusProcess()
    }
}

struct riwayatpesanansedangdalamPenjemputan: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            ZStack{
                Color(.white).edgesIgnoringSafeArea(.top)
                VStack{
                    listsedangdalamPenjemputan()
                        .background(Color.white)
                }
            }
        }
        .navigationBarTitle("Riwayat Pesanan", displayMode: .inline)
        .navigationBarBackButtonHidden(true)
        
    }
}

struct listsedangdalamPenjemputan: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
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
                        VStack{
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
                        if !self.show{
                            Text("TDX127328283")
                                .font(.system(size: 16, weight: .bold, design: .rounded))
                                .font(.title)
                                .foregroundColor(.white)
                        }
                        
                        Spacer(minLength: 0)
                        
                        HStack{
                            Text("Ringkasan Order")
                                .foregroundColor(.white)
                                .cornerRadius(20)
                                .font(.system(size: 14, weight: .medium))
                            Image(systemName: "chevron.right")
                                .foregroundColor(Color.white)
                            
                        }
                        .cornerRadius(20)
                    }
                    .padding(.top, (UIApplication.shared.windows.first?.safeAreaInsets.top)! + 15)
                    .padding(.horizontal)
                    .padding(.bottom, 10)
                    .background(Color("oren"))
                }
                
                
                ZStack{
                    VStack{
                        HStack{
                            VStack(alignment: .leading){
                                HStack{
                                    VStack{
                                        Text("Dari")
                                    }
                                    .font(.system(size: 14, weight: .bold, design: .rounded))
                                    .padding(.top, 1)
                                    .foregroundColor(Color.white)
                                    
                                    VStack{
                                        Text("Prum Nurma RT 02 Kota Bandung, Kec.st")
                                    }
                                    .font(.system(size: 14, weight: .regular, design: .rounded))
                                    .padding(.top, 1)
                                    .foregroundColor(Color.white)
                                }
                                .padding(.trailing, 15)
                                
                                HStack{
                                    VStack{
                                        Text("Ke")
                                    }
                                    .font(.system(size: 14, weight: .bold, design: .rounded))
                                    .padding(.top, 1)
                                    .foregroundColor(Color.white)
                                    
                                    VStack{
                                        Text("Prum Nurma RT 02 Kota Bandung, Kec. Selamat")
                                            .padding(.leading, 12)
                                    }
                                    .font(.system(size: 14, weight: .regular, design: .rounded))
                                    .padding(.top, 1)
                                    .foregroundColor(Color.white)
                                }
                                .padding(.trailing, 15)
                            }
                            .padding(.leading, -8)
                            .navigationBarHidden(true)
                            .navigationBarBackButtonHidden(true)
                        }
                        
                    }
                    .padding()
                    .frame(width: geo.size.width)
                    .background(Color("oren"))
                }
                VStack{
                    ScrollView(.vertical, showsIndicators: false){
                        riwayatsedangdalamPenjemputan()
                    }
                }
            }
            .edgesIgnoringSafeArea(.top)
        }
        .navigationBarTitle("", displayMode: .inline)
        
    }
}

//MARK: RiwayatpaketRequestrevisi

struct paketsedangmenungguDriver: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            ZStack{
                Color(.white).edgesIgnoringSafeArea(.top)
                VStack{
                    listpaketsedangmenungguDriver()
                        .background(Color.white)
                }
            }
        }
        .navigationBarTitle("Riwayat Pesanan", displayMode: .inline)
        .navigationBarBackButtonHidden(true)
        
    }
}

struct listpaketsedangmenungguDriver: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
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
                        VStack{
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
                        if !self.show{
                            Text("TDX127328283")
                                .font(.system(size: 16, weight: .bold, design: .rounded))
                                .font(.title)
                                .foregroundColor(.white)
                        }
                        
                        Spacer(minLength: 0)
                        
                        HStack{
                            Text("Ringkasan Order")
                                .foregroundColor(.white)
                                .cornerRadius(20)
                                .font(.system(size: 14, weight: .medium))
                            Image(systemName: "chevron.right")
                                .foregroundColor(Color.white)
                            
                        }
                        .cornerRadius(20)
                    }
                    .padding(.top, (UIApplication.shared.windows.first?.safeAreaInsets.top)! + 15)
                    .padding(.horizontal)
                    .padding(.bottom, 10)
                    .background(Color("oren"))
                }
                
                
                ZStack{
                    VStack{
                        HStack{
                            VStack(alignment: .leading){
                                HStack{
                                    VStack{
                                        Text("Dari")
                                    }
                                    .font(.system(size: 14, weight: .bold, design: .rounded))
                                    .padding(.top, 1)
                                    .foregroundColor(Color.white)
                                    
                                    VStack{
                                        Text("Prum Nurma RT 02 Kota Bandung, Kec.st")
                                    }
                                    .font(.system(size: 14, weight: .regular, design: .rounded))
                                    .padding(.top, 1)
                                    .foregroundColor(Color.white)
                                }
                                .padding(.trailing, 15)
                                
                                HStack{
                                    VStack{
                                        Text("Ke")
                                    }
                                    .font(.system(size: 14, weight: .bold, design: .rounded))
                                    .padding(.top, 1)
                                    .foregroundColor(Color.white)
                                    
                                    VStack{
                                        Text("Prum Nurma RT 02 Kota Bandung, Kec. Selamat")
                                            .padding(.leading, 12)
                                    }
                                    .font(.system(size: 14, weight: .regular, design: .rounded))
                                    .padding(.top, 1)
                                    .foregroundColor(Color.white)
                                }
                                .padding(.trailing, 15)
                            }
                            .padding(.leading, -8)
                            .navigationBarHidden(true)
                            .navigationBarBackButtonHidden(true)
                        }
                        
                    }
                    .padding()
                    .frame(width: geo.size.width)
                    .background(Color("oren"))
                }
                VStack{
                    ScrollView(.vertical, showsIndicators: false){
                        riwayatpaketsedangmenungguDriver()
                    }
                }
            }
            .edgesIgnoringSafeArea(.top)
        }
        .navigationBarTitle("", displayMode: .inline)
        
    }
}

//MARK: Request Revisi

struct requestRevisi: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            ZStack{
                Color(.white).edgesIgnoringSafeArea(.top)
                VStack{
                    listrequestRevisi()
                        .background(Color.white)
                }
            }
        }
        .navigationBarTitle("Riwayat Pesanan", displayMode: .inline)
        .navigationBarBackButtonHidden(true)
        
    }
}

struct listrequestRevisi: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
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
                        VStack{
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
                        if !self.show{
                            Text("TDX127328283")
                                .font(.system(size: 16, weight: .bold, design: .rounded))
                                .font(.title)
                                .foregroundColor(.white)
                        }
                        
                        Spacer(minLength: 0)
                        
                        HStack{
                            Text("Ringkasan Order")
                                .foregroundColor(.white)
                                .cornerRadius(20)
                                .font(.system(size: 14, weight: .medium))
                            Image(systemName: "chevron.right")
                                .foregroundColor(Color.white)
                            
                        }
                        .cornerRadius(20)
                    }
                    .padding(.top, (UIApplication.shared.windows.first?.safeAreaInsets.top)! + 15)
                    .padding(.horizontal)
                    .padding(.bottom, 10)
                    .background(Color("oren"))
                }
                
                
                ZStack{
                    VStack{
                        HStack{
                            VStack(alignment: .leading){
                                HStack{
                                    VStack{
                                        Text("Dari")
                                    }
                                    .font(.system(size: 14, weight: .bold, design: .rounded))
                                    .padding(.top, 1)
                                    .foregroundColor(Color.white)
                                    
                                    VStack{
                                        Text("Prum Nurma RT 02 Kota Bandung, Kec.st")
                                    }
                                    .font(.system(size: 14, weight: .regular, design: .rounded))
                                    .padding(.top, 1)
                                    .foregroundColor(Color.white)
                                }
                                .padding(.trailing, 15)
                                
                                HStack{
                                    VStack{
                                        Text("Ke")
                                    }
                                    .font(.system(size: 14, weight: .bold, design: .rounded))
                                    .padding(.top, 1)
                                    .foregroundColor(Color.white)
                                    
                                    VStack{
                                        Text("Prum Nurma RT 02 Kota Bandung, Kec. Selamat")
                                            .padding(.leading, 12)
                                    }
                                    .font(.system(size: 14, weight: .regular, design: .rounded))
                                    .padding(.top, 1)
                                    .foregroundColor(Color.white)
                                }
                                .padding(.trailing, 15)
                            }
                            .padding(.leading, -8)
                            .navigationBarHidden(true)
                            .navigationBarBackButtonHidden(true)
                        }
                        
                    }
                    .padding()
                    .frame(width: geo.size.width)
                    .background(Color("oren"))
                }
                VStack{
                    ScrollView(.vertical, showsIndicators: false){
                        riwayatpaketRequestrevisi()
                    }
                }
            }
            .edgesIgnoringSafeArea(.top)
        }
        .navigationBarTitle("", displayMode: .inline)
        
    }
}

//MARK: Menunggu Pembayaran

struct menungguPembayaran: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            ZStack{
                Color(.white).edgesIgnoringSafeArea(.top)
                VStack{
                    listmenungguPembayaran()
                        .background(Color.white)
                }
            }
        }
        .navigationBarTitle("Riwayat Pesanan", displayMode: .inline)
        .navigationBarBackButtonHidden(true)
        
    }
}

struct listmenungguPembayaran: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
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
                        VStack{
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
                        if !self.show{
                            Text("TDX127328283")
                                .font(.system(size: 16, weight: .bold, design: .rounded))
                                .font(.title)
                                .foregroundColor(.white)
                        }
                        
                        Spacer(minLength: 0)
                        
                        HStack{
                            Text("Ringkasan Order")
                                .foregroundColor(.white)
                                .cornerRadius(20)
                                .font(.system(size: 14, weight: .medium))
                            Image(systemName: "chevron.right")
                                .foregroundColor(Color.white)
                            
                        }
                        .cornerRadius(20)
                    }
                    .padding(.top, (UIApplication.shared.windows.first?.safeAreaInsets.top)! + 15)
                    .padding(.horizontal)
                    .padding(.bottom, 10)
                    .background(Color("warna"))
                }
                
                
                ZStack{
                    VStack{
                        HStack{
                            VStack(alignment: .leading){
                                HStack{
                                    VStack{
                                        Text("Dari")
                                    }
                                    .font(.system(size: 14, weight: .bold, design: .rounded))
                                    .padding(.top, 1)
                                    .foregroundColor(Color.white)
                                    
                                    VStack{
                                        Text("Prum Nurma RT 02 Kota Bandung, Kec.st")
                                    }
                                    .font(.system(size: 14, weight: .regular, design: .rounded))
                                    .padding(.top, 1)
                                    .foregroundColor(Color.white)
                                }
                                .padding(.trailing, 15)
                                
                                HStack{
                                    VStack{
                                        Text("Ke")
                                    }
                                    .font(.system(size: 14, weight: .bold, design: .rounded))
                                    .padding(.top, 1)
                                    .foregroundColor(Color.white)
                                    
                                    VStack{
                                        Text("Prum Nurma RT 02 Kota Bandung, Kec. Selamat")
                                            .padding(.leading, 12)
                                    }
                                    .font(.system(size: 14, weight: .regular, design: .rounded))
                                    .padding(.top, 1)
                                    .foregroundColor(Color.white)
                                }
                                .padding(.trailing, 15)
                            }
                            .padding(.leading, -8)
                            .navigationBarHidden(true)
                            .navigationBarBackButtonHidden(true)
                        }
                        
                    }
                    .padding()
                    .frame(width: geo.size.width)
                    .background(Color("warna"))
                }
                VStack{
                    ScrollView(.vertical, showsIndicators: false){
                        menungguPembayaranform()
                    }
                }
            }
            .edgesIgnoringSafeArea(.top)
        }
        .navigationBarTitle("", displayMode: .inline)
        
    }
}

//MARK: Barang Telah Sampai

struct barangtelahSampai: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            ZStack{
                Color(.white).edgesIgnoringSafeArea(.top)
                VStack{
                    listbarangtelahSampai()
                        .background(Color.white)
                }
            }
        }
        .navigationBarTitle("Riwayat Pesanan", displayMode: .inline)
        .navigationBarBackButtonHidden(true)
        
    }
}

struct listbarangtelahSampai: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
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
                        VStack{
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
                        if !self.show{
                            Text("TDX127328283")
                                .font(.system(size: 16, weight: .bold, design: .rounded))
                                .font(.title)
                                .foregroundColor(.white)
                        }
                        
                        Spacer(minLength: 0)
                        
                        HStack{
                            Text("Ringkasan Order")
                                .foregroundColor(.white)
                                .cornerRadius(20)
                                .font(.system(size: 14, weight: .medium))
                            Image(systemName: "chevron.right")
                                .foregroundColor(Color.white)
                            
                        }
                        .cornerRadius(20)
                    }
                    .padding(.top, (UIApplication.shared.windows.first?.safeAreaInsets.top)! + 15)
                    .padding(.horizontal)
                    .padding(.bottom, 10)
                    .background(Color("hijau"))
                }
                
                
                ZStack{
                    VStack{
                        HStack{
                            VStack(alignment: .leading){
                                HStack{
                                    VStack{
                                        Text("Dari")
                                    }
                                    .font(.system(size: 14, weight: .bold, design: .rounded))
                                    .padding(.top, 1)
                                    .foregroundColor(Color.white)
                                    
                                    VStack{
                                        Text("Prum Nurma RT 02 Kota Bandung, Kec.st")
                                    }
                                    .font(.system(size: 14, weight: .regular, design: .rounded))
                                    .padding(.top, 1)
                                    .foregroundColor(Color.white)
                                }
                                .padding(.trailing, 15)
                                
                                HStack{
                                    VStack{
                                        Text("Ke")
                                    }
                                    .font(.system(size: 14, weight: .bold, design: .rounded))
                                    .padding(.top, 1)
                                    .foregroundColor(Color.white)
                                    
                                    VStack{
                                        Text("Prum Nurma RT 02 Kota Bandung, Kec. Selamat")
                                            .padding(.leading, 12)
                                    }
                                    .font(.system(size: 14, weight: .regular, design: .rounded))
                                    .padding(.top, 1)
                                    .foregroundColor(Color.white)
                                }
                                .padding(.trailing, 15)
                            }
                            .padding(.leading, -8)
                            .navigationBarHidden(true)
                            .navigationBarBackButtonHidden(true)
                        }
                        
                    }
                    .padding()
                    .frame(width: geo.size.width)
                    .background(Color("hijau"))
                }
                VStack{
                    ScrollView(.vertical, showsIndicators: false){
                        statusbarangtelahSampai()
                    }
                }
            }
            .edgesIgnoringSafeArea(.top)
        }
        .navigationBarTitle("", displayMode: .inline)
        
    }
}

//MARK: Pesanan Dibatalkan

struct pesananDibatalkan: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            ZStack{
                Color(.white).edgesIgnoringSafeArea(.top)
                VStack{
                    listpesananDibatalkan()
                        .background(Color.white)
                }
            }
        }
        .navigationBarTitle("Riwayat Pesanan", displayMode: .inline)
        .navigationBarBackButtonHidden(true)
        
    }
}

struct listpesananDibatalkan: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
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
                        VStack{
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
                        if !self.show{
                            Text("TDX127328283")
                                .font(.system(size: 16, weight: .bold, design: .rounded))
                                .font(.title)
                                .foregroundColor(.white)
                        }
                        
                        Spacer(minLength: 0)
                        
                        HStack{
                            Text("Ringkasan Order")
                                .foregroundColor(.white)
                                .cornerRadius(20)
                                .font(.system(size: 14, weight: .medium))
                            Image(systemName: "chevron.right")
                                .foregroundColor(Color.white)
                            
                        }
                        .cornerRadius(20)
                    }
                    .padding(.top, (UIApplication.shared.windows.first?.safeAreaInsets.top)! + 15)
                    .padding(.horizontal)
                    .padding(.bottom, 10)
                    .background(Color("warna"))
                }
                
                
                ZStack{
                    VStack{
                        HStack{
                            VStack(alignment: .leading){
                                HStack{
                                    VStack{
                                        Text("Dari")
                                    }
                                    .font(.system(size: 14, weight: .bold, design: .rounded))
                                    .padding(.top, 1)
                                    .foregroundColor(Color.white)
                                    
                                    VStack{
                                        Text("Prum Nurma RT 02 Kota Bandung, Kec.st")
                                    }
                                    .font(.system(size: 14, weight: .regular, design: .rounded))
                                    .padding(.top, 1)
                                    .foregroundColor(Color.white)
                                }
                                .padding(.trailing, 15)
                                
                                HStack{
                                    VStack{
                                        Text("Ke")
                                    }
                                    .font(.system(size: 14, weight: .bold, design: .rounded))
                                    .padding(.top, 1)
                                    .foregroundColor(Color.white)
                                    
                                    VStack{
                                        Text("Prum Nurma RT 02 Kota Bandung, Kec. Selamat")
                                            .padding(.leading, 12)
                                    }
                                    .font(.system(size: 14, weight: .regular, design: .rounded))
                                    .padding(.top, 1)
                                    .foregroundColor(Color.white)
                                }
                                .padding(.trailing, 15)
                            }
                            .padding(.leading, -8)
                            .navigationBarHidden(true)
                            .navigationBarBackButtonHidden(true)
                        }
                        
                    }
                    .padding()
                    .frame(width: geo.size.width)
                    .background(Color("warna"))
                }
                VStack{
                    ScrollView(.vertical, showsIndicators: false){
                        pesanandetailDibatalkan()
                    }
                }
            }
            .edgesIgnoringSafeArea(.top)
        }
        .navigationBarTitle("", displayMode: .inline)
        
    }
}
