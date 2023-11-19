//
//  MapFunction.swift
//  HigherOrder
//
//  Created by Seham almarshedi on 04/05/1445 AH.
//

import SwiftUI

struct ReduseFunction: View {
    
    
    @StateObject var pro = ModelLand()
    var totalPrice: Int {
        if pro.prodct.isEmpty { return 0 }
        let totalPrice  = pro.prodct.reduce(0) { $0 + $1.price}
        return  totalPrice
    }
    var body: some View {
        
        VStack{
            Text("Land Marke").font(.title).foregroundColor(.black).bold()
            
                .font(.headline)
            
        }.padding(.trailing)
            .padding()
        Divider()

            
            
            ScrollView{
                VStack{
                    
                    ForEach(pro.prodct) { p in
                        
                        
                        
                        HStack {
                            Image(p.image)
                                .resizable().scaledToFit()
                                .foregroundColor(.white)
                                .frame(width: 50, height: 50)
                                .padding(9)
                            
                            
                            HStack(spacing:70) {
                                Text(p.name)
                                    .bold()
                                    .font(.title3)
                                
                                    .padding()
                                Text("\(p.price)")+Text(" SR")
                                
                            }
                            // .padding(.leading,50)
                            
                            Spacer()
                            
                            
                            
                            
                            
                        }
                        Divider()
                    }
                }
                
            }
            
      
        
    }
    
    
}
    
    

  
#Preview {
    ReduseFunction()
}
