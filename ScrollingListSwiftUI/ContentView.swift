//
//  ContentView.swift
//  ScrollingListSwiftUI
//
//  Created by Anirup Patnaik on 23/11/19.
//  Copyright © 2019 Virtuelabs. All rights reserved.
//

import SwiftUI

/*struct Box : Identifiable {
    var id = UUID()
    let title, imageUrl : String
}*/

struct ContentView: View {
    
    
    let box : [Box] = [
        Box(title: "Good Stuffs", imageUrl: "0"),
        Box(title: "Tech Stuffs", imageUrl: "1"),
        Box(title: "Code Stuffs", imageUrl: "2"),
        Box(title: "Photo Stuffs", imageUrl: "3"),
        Box(title: "SwiftUI Stuffs", imageUrl: "4")
    ]
    var body: some View {
        VStack {
            NavigationView {
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(box) { data in
                            BoxView(box: data)
                        }
                       
                    }
                }.navigationBarTitle(Text("Tech Posts!"))
            }
            Spacer()
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
