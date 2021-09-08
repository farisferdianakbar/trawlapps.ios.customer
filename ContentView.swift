//
//  ContentView.swift
//  UI_Study
//
//  Created by UI UX Trawlbens on 12/06/21.
//  

import SwiftUI

let filename = ("Riwayat_pesanan", "Home", "Pesan", "resetPassword")

class Host: UIHostingController<ContentView>{
override var preferredStatusBarStyle: UIStatusBarStyle{
    return .lightContent
    }
}

struct ContentView: View {
    @EnvironmentObject var authUser : authUser
    @State var animate = false
    @State var toggled = true
    @State var endSplash = false
    
    init() {
        UITabBar.appearance().barTintColor = .white
        }
    
    var body: some View {
        
        
        ZStack{
            Login()
//            trawlpackStep_1()
//            viewDropdown()
            ZStack{
                Color("warna")
                
                Image("LOGO PUTIH TANPA BLOCK MERAH")
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: animate ? .fill : .fit)
                    .frame(width: animate ? nil : 85, height: animate ? nil : 85)
                
                //scaling view
                    .scaleEffect(animate ? 3 : 1)
                //setting width to avoid over size
                    .frame(width: UIScreen.main.bounds.width)
            }
            .ignoresSafeArea(.all, edges: .all)
            .onAppear(perform: animateSplash)
            //hidding view after finished...
            .opacity(endSplash ? 0 : 1)
        }
           
    }
    
    func animateSplash(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.25){
            withAnimation(Animation.easeOut(duration: 0.45)){
                animate.toggle()
            }
            withAnimation(Animation.easeOut(duration: 0.35)){
                endSplash.toggle()
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}





