//
//  ContentView.swift
//  SideMenuSwiftUI
//
//  Created by Nelson Gonzalez on 12/25/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var menu: Bool = false
    var body: some View {
        NavigationView {
            ZStack {
            List {
                Text("KLK")
                }
                Group {
                    if self.menu {
                    MenuView().position(x: 170, y: 280).animation(.some(.linear(duration: 0.30))).padding()
                    }
                }
            }.navigationBarTitle(Text(self.menu ? "" : "Side Menu")).navigationBarItems(trailing: Button(action: {self.menu.toggle()}) {
                    Image(systemName: "line.horizontal.3.decrease")
                }).foregroundColor(.black)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
