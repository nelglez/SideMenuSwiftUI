//
//  MenuView.swift
//  SideMenuSwiftUI
//
//  Created by Nelson Gonzalez on 12/25/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import SwiftUI

struct MenuView : View {
    @State private var schemeMode: Bool = false
    @State private var changeMode: Bool = false
    var body: some View {
        ZStack(alignment: .topLeading) {
            
        Rectangle().fill(Color.white).frame(width: 300, height: 700).cornerRadius(20).shadow(color: .gray, radius: 8).position(x: 150, y: 255)
            
            VStack(alignment: .leading, spacing: 20) {
                Button(action: {}) {
            HStack {
                Image(systemName: "person.circle").font(.system(size: 25)).foregroundColor(.black)
                Text("Profile").foregroundColor(.black)
                    }
            }
                Button(action: {}) {
                HStack {
                    Image(systemName: "creditcard").font(.system(size: 25)).foregroundColor(.black)
                    Text("Payment methods").foregroundColor(.black)
                    }
                }
                Button(action: {}) {
                HStack {
                    Image(systemName: "folder").font(.system(size: 25)).foregroundColor(.black)
                    Text("Documents").foregroundColor(.black)
                    }
                }
                Button(action: {
                    self.schemeMode.toggle()
                    self.changeMode.toggle()
                }) {
                HStack {
                    Image(systemName: self.schemeMode ? "moon.stars.fill": "sun.min.fill").font(.system(size: 25)).foregroundColor((self.schemeMode == true) ?
                            Color.black : Color.orange)
                    Text(self.changeMode ? "DarkMode" : "LightMode").foregroundColor(.black)
                    }
                }
                Button(action: {}) {
                HStack {
                    Image(systemName: "gear").font(.system(size: 25)).foregroundColor(.black)
                    Text("Setting").foregroundColor(.black)
                    }
                }
                Button(action: {}) {
                HStack {
                    Image(systemName: "power").font(.system(size: 25)).foregroundColor(.black)
                    Text("Logout").foregroundColor(.black)
                    }
                }
            }.padding()
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
