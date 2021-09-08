//
//  Dropdown.swift
//  UI_Study
//
//  Created by UI UX Trawlbens on 22/06/21.
//

import Foundation
import SwiftUI

struct viewDropdown: View {
    
    @State var selected = ""
    @State var show = false
    var body: some View {
        ZStack{
            ScrollView(.vertical, showsIndicators: false){
            VStack{
                
                Button(action: {
                    self.show.toggle()
                }){
                    Text ("Open").padding(.vertical).padding(.horizontal, 25).foregroundColor(.white)
                }
                .background(LinearGradient(gradient: .init(colors: [Color("warna"), Color("primary_1")]), startPoint: .leading, endPoint: .trailing))
                .clipShape(Capsule())
                
                Text(self.selected).padding(.top).font(.system(size: 50, weight: .bold, design: .rounded))
                
                Text(self.selected).padding(.top).font(.system(size: 50, weight: .bold, design: .rounded))
                
                Text(self.selected).padding(.top).font(.system(size: 50, weight: .bold, design: .rounded))
                
                
                Text(self.selected).padding(.top).font(.system(size: 50, weight: .bold, design: .rounded))
                
                
                Text(self.selected).padding(.top).font(.system(size: 50, weight: .bold, design: .rounded))
                
                
                Text(self.selected).padding(.top).font(.system(size: 50, weight: .bold, design: .rounded))
                
                
                Text(self.selected).padding(.top).font(.system(size: 50, weight: .bold, design: .rounded))
                
                
                Text(self.selected).padding(.top).font(.system(size: 50, weight: .bold, design: .rounded))
                
                
                Text(self.selected).padding(.top).font(.system(size: 50, weight: .bold, design: .rounded))
            }
            }
            VStack{
                Spacer()
                radioButtons(selected: self.$selected, show: self.$show).offset(y: self.show ? (UIApplication.shared.windows.last?.safeAreaInsets.bottom)! + 2 : UIScreen.main.bounds.height)
            }
            .background(Color(UIColor.label.withAlphaComponent(self.show ? 0.2 : 0)).edgesIgnoringSafeArea(.all))
        }.background(Color.yellow).edgesIgnoringSafeArea(.all)
        .animation(.default)
    }
}

struct radioButtons : View {
    
    
    @Binding var selected : String
    @Binding var show : Bool
    var columns = Array (repeating: GridItem(.flexible()), count: 2)
    @State var text = ""
    
    var body: some View{
        
        VStack(alignment: .leading, spacing: 20){
            
            Text("Filter By").font(.title).padding(.top)
            ForEach(data, id: \.self){ i in
                Button(action: {
                    self.selected = i
                }) {
                    HStack{
                        Text(i)
                        Spacer()
                        ZStack{
                            Circle().fill (self.selected == i ? Color("primary_1") : Color.black.opacity(0.2)).frame(width: 18, height: 18)
                            if self.selected == i {
                                Circle().stroke(Color("warna"), lineWidth: 4).frame(width: 25, height: 25)
                            }
                        }
                        
                    }.foregroundColor(.black)
                }.padding(.top)
            }
            
            
            HStack{
                Spacer()
                
                Button(action: {
                    self.show.toggle()
                }){
                    Text("Continue").padding(.vertical).padding(.horizontal, 25).foregroundColor(.white)
                }
                .background(
                    
                    self.selected != "" ?
                        
                        LinearGradient(gradient: .init(colors: [Color("warna"), Color("primary_1")]), startPoint: .leading, endPoint: .trailing) :
                        
                        LinearGradient(gradient: .init(colors: [Color.black.opacity(0.2), Color.black.opacity(0.2)]), startPoint: .leading, endPoint: .trailing)
                    
                )
                .clipShape(Capsule())
                .disabled(self.selected != "" ? false : true)
            }.padding(.top)
            
            
        }
        .padding(.vertical)
        .padding(.horizontal, 25)
        .padding(.bottom, (UIApplication.shared.windows.last?.safeAreaInsets.bottom)! + 15) //errorPreview
        .background(Color.blue)
        .cornerRadius(30)
        
        
    }
}

var data = ["Revelance","Newest","Price","Newest","Newest_1","Newest_2","Newest_3"]

struct viewDropdown_Previews: PreviewProvider {
    static var previews: some View{
        viewDropdown()
    }
}


struct searchBar_list: View {
    var columns = Array (repeating: GridItem(.flexible()), count: 2)
    @State var text = ""
    var body: some View{
        VStack{
            searchBar(text: $text)
            ScrollView(.vertical, showsIndicators: false){
                LazyVGrid(columns: columns, spacing: 20){
                    ForEach(mData.filter({"\($0)".contains(text.lowercased()) || text.isEmpty})){ i in
                        Text(i.title)
                            .padding(.all, 30)
                            .background(Color.gray)
                    }
                }
            }
        }
    }
}

struct searchBar: View {
    @Binding var text: String
    @State private var isEditing = false
    var body: some View{
        HStack{
            TextField("Searcasdc", text: $text)
                .padding(15)
                .padding(.horizontal, 25)
                .background(Color(.systemGray6))
                .foregroundColor(.black)
                .cornerRadius(8)
                .overlay(
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 15)
                        
                        
                        if isEditing {
                            Button(action: {
                                self.text = ""
                            }, label: {
                                Image(systemName: "multiply.circle.fill")
                                    .foregroundColor(.gray)
                                    .padding(.trailing, 8)
                            })
                        }
                        
                        
                    }
                ).onTapGesture {
                    self.isEditing = true
                }
            if isEditing {
                Button(action: {
                    self.isEditing = false
                    
                    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                }){
                    Text("Cancel")
                }
                .padding(.trailing, 10)
                .transition(.move(edge: .trailing))
                .animation(.default)
            }
        }
    }
}

struct myData: Identifiable {
    var id = UUID()
    var title: String
}

var mData = [
myData(title: "abc"),
    myData(title: "abc"),
    myData(title: "asda"),
    myData(title: "gfg"),
    myData(title: "bcv"),
    myData(title: "yrt"),
]

//struct searchBar: View {
//    @Binding var text: String
//    @State private var isEditing = false
//    var body: some View{
//        HStack{
//            TextField("Searcasdc", text: $text)
//                .padding(15)
//                .padding(.horizontal, 25)
//                .background(Color(.systemGray6))
//                .foregroundColor(.black)
//                .cornerRadius(8)
//                .overlay(
//                    HStack{
//                        Image(systemName: "magnifyingglass")
//                            .foregroundColor(.gray)
//                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
//                            .padding(.leading, 15)
//
//
//                        if isEditing {
//                            Button(action: {
//                                self.text = ""
//                            }, label: {
//                                Image(systemName: "multiply.circle.fill")
//                                    .foregroundColor(.gray)
//                                    .padding(.trailing, 8)
//                            })
//                        }
//
//
//                    }
//                ).onTapGesture {
//                    self.isEditing = true
//                }
//            if isEditing {
//                Button(action: {
//                    self.isEditing = false
//
//                    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
//                }){
//                    Text("Cancel")
//                }
//                .padding(.trailing, 10)
//                .transition(.move(edge: .trailing))
//                .animation(.default)
//            }
//        }
//    }
//}
//
//struct myData: Identifiable {
//    var id = UUID()
//    var title: String
//}
//
//var mData = [
//myData(title: "abc"),
//    myData(title: "abc"),
//    myData(title: "asda"),
//    myData(title: "gfg"),
//    myData(title: "bcv"),
//    myData(title: "yrt"),
//]
