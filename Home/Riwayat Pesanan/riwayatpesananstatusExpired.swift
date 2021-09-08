//
//  riwayatpesananstatusExpired.swift
//  UI_Study
//
//  Created by UI UX Trawlbens on 03/07/21.
//

import Foundation
import SwiftUI

struct riwayatpesananstatusExpired: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            ZStack{
                Color(.white).edgesIgnoringSafeArea(.top)
                VStack{
                    listriwayatpesananstatusExpired()
                        .background(Color.white)
                }
            }
        }
        .navigationBarTitle("Riwayat Pesanan", displayMode: .inline)
        .navigationBarBackButtonHidden(true)
        
    }
}

struct listriwayatpesananstatusExpired: View {
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
                    .background(Color.gray)
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
                    .background(Color.gray)
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

struct riwayatpesananstatusExpired_Previews: PreviewProvider {
    static var previews: some View {
        riwayatpesananstatusExpired()
    }
}
