//
//  Pesan_fix.swift
//  UI_Study
//
//  Created by UI UX Trawlbens on 17/06/21.
//

import Foundation
import SwiftUI

struct Pesan_fix: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var btnBack: some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            Image(systemName: "arrow.left.circle.fill")
                .resizable()
                .frame(width: 40, height: 40)
                .shadow(color: Color.black.opacity(0.2), radius: 2, x: 0.0, y: 0.0)
        }
        .foregroundColor(.white)
    }
    var body: some View {
        Home()
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
    }
}

struct Home : View {
    
    @EnvironmentObject var data : messageDatas
    
    var body: some View {
        ZStack{
            NavigationLink(
                destination: messageView(),
                isActive: $data.show){
                Text("")
            }
            VStack{
                navbar()
            }
        }
        .edgesIgnoringSafeArea(.top)
        .accentColor(.yellow)
        
        
    }
}

struct navbar : View {
    var body: some View{
        VStack{
            HStack {
                Text("Pesan")
                    .fontWeight(.bold)
                    .font(.title)
                    .foregroundColor(.white)
                Spacer(minLength: 0)
            }
            .padding(.top, 65)
            .padding(.horizontal)
            .padding(.bottom, 20)
            .background(Color("warna"))
            
            MainView().clipShape(messageRounded())
        }
    }
    
}

struct MainView_dua : View {
    var body: some View {
        List(0..<15){_ in
            Text("Test")
        }
    }
}


struct MainView : View {
    @EnvironmentObject var data : messageDatas
    var body: some View {
        List(messages){i in
            messageCellview(pic: i.pic, name: i.name, msg: i.msg, time: i.time, msgs: i.msgs).onTapGesture {
                self.data.selectedData = i
                self.data.show.toggle()
            }
        }
    }
}

struct messageRounded : Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: .topLeft, cornerRadii: CGSize(width: 0, height: 0))
        return Path(path.cgPath)
    }
}

struct messageCellview : View {
    var pic : String
    var name : String
    var msg : String
    var time : String
    var msgs : String
    var body: some View {
        HStack(spacing: 15){
            Image(pic).resizable().frame(width: 50, height: 50).clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 5){
                Text(name).font(.headline)
                Text(msg).lineLimit(2).font(.caption)
            }
            Spacer()
            VStack(spacing: 10){
                
                Text(time).font(.caption)
                if msgs != "" {
                    Text(msgs).padding(6).background(Color.yellow).foregroundColor(.white).clipShape(Circle())
                }
                else {
                    Spacer()
                }
                
                
            }
        }.padding(9)
    }
}

struct messageType : Identifiable {
    var id : Int
    var msg : String
    var time : String
    var msgs : String
    var name : String
    var pic : String
}

var messages : [messageType] = [
    messageType(id: 0, msg: "New Album Solo Request by mantap!!!", time: "14:23", msgs: "2", name: "Taylor", pic: "gue_ganteng_app")
    ,messageType(id: 1, msg: "New Album Solo Request by mantap!!!", time: "14:23", msgs: "2", name: "Mayco", pic: "gue_ganteng_app")
    ,messageType(id: 2, msg: "New Album Solo Request by mantap!!!", time: "14:23", msgs: "2", name: "Gesti", pic: "gue_ganteng_app")
    ,messageType(id: 3, msg: "New Album Solo Request by mantap!!!", time: "14:23", msgs: "2", name: "Nurma", pic: "gue_ganteng_app")
    ,messageType(id: 4, msg: "New Album Solo Request by mantap!!!", time: "14:23", msgs: "2", name: "Taylor", pic: "gue_ganteng_app")
    ,messageType(id: 5, msg: "New Album Solo Request by mantap!!!", time: "14:23", msgs: "2", name: "Taylor", pic: "gue_ganteng_app")
    ,messageType(id: 6, msg: "New Album Solo Request by mantap!!!", time: "14:23", msgs: "2", name: "Taylor", pic: "gue_ganteng_app")
]

struct messageView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var btnBack: some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            Image(systemName: "arrow.left.circle.fill")
                .resizable()
                .frame(width: 40, height: 40)
                .shadow(color: Color.black.opacity(0.2), radius: 2, x: 0.0, y: 0.0)
        }
        .foregroundColor(.white)
    }
    
    @EnvironmentObject var data : messageDatas
    @StateObject var tabData = TabViewModel()
    @Namespace var animation
    
    var body: some View {
        NavigationView{
            ZStack{
                Color("warna").edgesIgnoringSafeArea(.top)
                VStack(spacing: 0){
                    HStack(spacing: 10 ){
                        btnBack
                        Spacer()
                        VStack(spacing: 5){
                            Image(data.selectedData.pic).resizable().frame(width: 45, height: 45).clipShape(Circle())
                            Text(data.selectedData.name).fontWeight(.heavy)
                        }.offset(x: 25)
                        
                        Spacer()
                        
                        Button(action: {
                        }){
                            Image(systemName: "phone.fill").resizable().frame(width: 20, height: 20)
                        }.padding(.trailing, 25).foregroundColor(Color("warna"))
                        
                        Button(action: {
                        }){
                            Image(systemName: "phone.fill").resizable().frame(width: 20, height: 20)
                        }
                    }
                    .foregroundColor(.white)
                    .padding()
                    
                    
                    GeometryReader{_ in
                        chatDetails()
                    }
                    
                    chatBottomView()
                    
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

struct messageTopview : View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var btnBack: some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            Image(systemName: "arrow.left.circle.fill")
                .resizable()
                .frame(width: 40, height: 40)
                .shadow(color: Color.black.opacity(0.2), radius: 2, x: 0.0, y: 0.0)
        }
        .foregroundColor(.white)
    }
    
    @EnvironmentObject var data : messageDatas
    @StateObject var tabData = TabViewModel()
    @Namespace var animation
    
    var body: some View {
        HStack(spacing: 10 ){
            btnBack
            Spacer()
            VStack(spacing: 5){
                Image(data.selectedData.pic).resizable().frame(width: 45, height: 45).clipShape(Circle())
                Text(data.selectedData.name).fontWeight(.heavy)
            }.offset(x: 25)
            
            Spacer()
            
            Button(action: {
            }){
                Image(systemName: "phone.fill").resizable().frame(width: 20, height: 20)
            }.padding(.trailing, 25).foregroundColor(Color("warna"))
            
            Button(action: {
            }){
                Image(systemName: "phone.fill").resizable().frame(width: 20, height: 20)
            }
        }
        .foregroundColor(.white)
        .padding()
        
    }
    
}



struct chatBottomView: View {
    @State var txt = ""
    var body: some View {
        HStack{
            HStack(spacing: 8){
                Button(action: {
                    
                }) {
                    Image(systemName: "home").resizable().frame(width: 20, height: 20).foregroundColor(.gray)
                }
                TextField("Type something", text: $txt)
                Button(action: {
                    
                }) {
                    Image(systemName: "camera.fill").font(.body)
                }.foregroundColor(.gray)
                Button(action: {
                    
                }) {
                }
            }
            .padding()
            .background(Color("text_secondary_2"))
            .clipShape(Capsule())
            
            Button(action: {
                
            }) {
                Image(systemName: "paperplane.fill")
                    .resizable()
                    .frame(width: 22, height: 22)
                    .padding(10)
                    .foregroundColor(.white)
                    .background(Color("primary_1"))
                    .clipShape(Circle())
            }.foregroundColor(.gray)
        }
        .padding(.horizontal, 15)
        .background(Color.white)
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct chatDetails : View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack{
                ForEach(Eachmsg){i  in
                    chatCell(data: i)
                }
            }.padding(.top, 15)
        }.padding(.horizontal, 15)
        .background(Color.white)
        .clipShape(messageRounded())
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct chatCell: View {
    var data : msgdataType
    var body : some View{
        HStack{
            if data.myMsg{
                Spacer()
                Text(data.msg)
                    .font(.system(size: 14))
                    .padding()
                    .background(Color("primary_1"))
                    .clipShape(msgTail(mymsg: data.myMsg))
                    .foregroundColor(.white)
            }
            else{
                Text(data.msg)
                    .font(.system(size: 14))
                    .padding()
                    .background(Color("text_secondary_2"))
                    .clipShape(msgTail(mymsg: data.myMsg))
                
                Spacer()
            }
        }.padding(data.myMsg ? .leading : .trailing, 20)
        .padding(.vertical, 2)
    }
}

struct msgTail : Shape {
    var mymsg : Bool
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft,.topRight,mymsg ? .bottomLeft : .bottomRight], cornerRadii: CGSize(width: 25, height: 25))
        return Path(path.cgPath)
    }
}

struct msgdataType : Identifiable {
    var id: Int
    var msg: String
    var myMsg: Bool
}

var Eachmsg = [
    msgdataType(id: 0, msg: "asdasbdkjasbdnkjasbdkjasbdkasbdkajsb", myMsg: false),
    msgdataType(id: 1, msg: "asdasbdkjasbdnkjasbdkjasbdkasbdkajsbasdasdasdasbdkjasbdnkjasbdkjasbdkasbdkajsbasdasdasdasbdkjasbdnkjasbdkjasbdkasbdkajsbasdasd", myMsg: true),
    msgdataType(id: 2, msg: "asdasbdkjasbdnkjasbdkjasbdkasbdkajsb", myMsg: false),
]

class messageDatas: ObservableObject {
    @Published var show: Bool = false
    @Published var selectedData : messageType = .init(id: -1, msg: "", time:"", msgs:"", name:"", pic:"")
}

struct Pesan_fix_Previews: PreviewProvider {
    static var previews: some View {
        Pesan_fix()
    }
}

