//
//  TabBar.swift
//  UI_Study
//
//  Created by UI UX Trawlbens on 14/06/21.
//

import Foundation
import SwiftUI


struct TabButton: View {
    var title : String
    @Binding var selectedTab : String
    var animation : Namespace.ID
    
    var body: some View {
        
        Button(action: { withAnimation(.spring()){selectedTab = title}
            
        }, label: {
            
            VStack(alignment: .leading, spacing: 8, content: {
                
                Text(title)
                    .font(.system(size: 14, weight: .bold, design: .rounded))
//                    .foregroundColor(selectedTab == title ? .black : .blue)
                    .foregroundColor(selectedTab == title ? .white : Color("merah_transparant"))
                   
                
                if selectedTab == title {
                    Capsule()
                        .fill(Color.white)
                        .frame(width: 40, height: 3 )
                        .matchedGeometryEffect(id: "tab", in: animation)
                }
            })
            .frame(
                width: 125, alignment: .topTrailing
            )
        })
    }
}


