//
//  BoxView.swift
//  ScrollingListSwiftUI
//
//  Created by Anirup Patnaik on 23/11/19.
//  Copyright © 2019 Virtuelabs. All rights reserved.
//

import SwiftUI

struct BoxView: View {
    
    @State var box : Box
    var body: some View {
        VStack {
            Image(box.imageUrl)
            .resizable()
            .frame(width: 80, height: 80)
            .cornerRadius(12)
            
            Text(box.title)
                
        }
    }
}

struct BoxView_Previews: PreviewProvider {
    static var previews: some View {
        BoxView(box: Box(title: "", imageUrl: ""))
    }
}
