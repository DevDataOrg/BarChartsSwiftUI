//
//  BarView.swift
//  BarChartsSwiftUI
//
//  Created by Artyom Romanchuk on 08.01.2021.
//

import SwiftUI

struct BarView: View{
    
    var value: CGFloat
    var cornerRadius: CGFloat
    
    var body: some View {
        VStack {
            
            ZStack (alignment: .bottom) {
                RoundedRectangle(cornerRadius: cornerRadius)
                    .frame(width: 30, height: 200).foregroundColor(.black)
                RoundedRectangle(cornerRadius: cornerRadius)
                    .frame(width: 30, height: value).foregroundColor(.green)
                //you can delet this if you do not whant look gradient
                RoundedRectangle(cornerRadius: cornerRadius).fill(LinearGradient(gradient: Gradient(colors: [.purple, .red, .blue]), startPoint: .top, endPoint: .bottom))
                    .frame(width: 30, height: value)
                
                
            }.padding(.bottom, 8)
        }
        
    }
}
struct BarView_Previews: PreviewProvider {
    static var previews: some View {
        BarView(value: 170, cornerRadius: 25)
    }
}
