//
//  CircleGroupView.swift
//  Restart-App
//
//  Created by Ivan Romero on 08/01/2024.
//

import SwiftUI

struct CircleGroupView: View {
    // MARK: - PROPERTIES
    @State var shapeColor: Color
    @State var shapeOpacity: Double
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            Circle()
                .stroke(shapeColor.opacity(shapeOpacity),lineWidth: 40)
            .frame(width: 260, height: 260, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Circle()
                .stroke(shapeColor.opacity(shapeOpacity), lineWidth: 80)
                .frame(width: 260, height: 260, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    ZStack {
        Color(.colorBlue)
            .ignoresSafeArea(.all, edges: .all)
        CircleGroupView(shapeColor: .white, shapeOpacity: 0.2)
    }
}
