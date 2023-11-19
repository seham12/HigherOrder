//
//  SwiftUIView.swift
//  HigherOrder
//
//  Created by Seham almarshedi on 04/05/1445 AH.
//

import SwiftUI

 

struct FunctionFilter: View {
    
    @StateObject var fData = FruitData()
    @State var searchText = ""
    
    
    var mFilter : [Fruit] {
        if searchText.isEmpty {
            return fData.frtData
        } else {
            return fData.frtData.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
        }
    }
    
    var body: some View {
        ZStack{
            Color.purple.opacity(0.4)
                .ignoresSafeArea()
            VStack(spacing: 0){
                
                
                
                Text("fruit")
                
                
                    .foregroundColor(.white)
                    .font(.largeTitle).bold()
                    .padding()
                
                ZStack{
                    UnevenRoundedRectangle(topLeadingRadius: 40, bottomLeadingRadius: 0, bottomTrailingRadius: 0, topTrailingRadius: 40).fill(.purple).opacity(0.2)
                        .ignoresSafeArea()
                    
                    ScrollView{
                        VStack {
                            
                            HStack{
                                Image(systemName: "magnifyingglass")
                                TextField("Search", text: $searchText)
                            }.padding()
                                .foregroundColor(.black)
                                .font(.title3)
                                .frame(width: 360,height: 60)
                                .background(RoundedRectangle(cornerRadius: 25, style: .continuous).fill(.gray.opacity(0.1)))
                            
                            ForEach(mFilter) { item in
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .fill(Color.white)
                                        .frame(maxWidth: .infinity)
                                        .frame(height: 85)
                                    
                                    HStack (spacing:-50){
                                        Image(item.image)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 100)
                                            .padding(.trailing,100)
                                        VStack {
                                            Text(item.name)
                                                .bold()
                                                .font(.title3)
                                                .padding(.trailing,60).padding()
                                            
                                            
                                            Spacer()
                                        }
                                    }
                                }.padding()
                            }
                        }
                    }}}}
    }}
#Preview {
    FunctionFilter()
}
   
