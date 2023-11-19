//
//  SwiftUIView.swift
//  HigherOrder
//
//  Created by Seham almarshedi on 04/05/1445 AH.
//

import SwiftUI


struct SortFunction: View {
  
        enum SortOption {
            case name, dueDate, priority
        }
        @State private var sortOption: SortOption = .name
    var sortedTasks: [Model] {
            switch sortOption {
            case .name:
                return tasks.sorted { $0.name < $1.name }
            case .dueDate:
                return tasks.sorted { $0.dueDate < $1.dueDate }
            case .priority:
                return tasks.sorted { $0.priority.rawValue > $1.priority.rawValue }
            }
        }

        var body: some View {
            ZStack{
                Color.brown
                .ignoresSafeArea()
            VStack {
                Picker("Sort By", selection: $sortOption) {
                    Text("Name").tag(SortOption.name)
                   Text("Due Date").tag(SortOption.dueDate)
                    Text("Priority").tag(SortOption.priority)
                }.pickerStyle(SegmentedPickerStyle())
                    .background(.brown)
                ScrollView {
                            ForEach(tasks) { task in
                                Divider()
                                HStack {
                                    Text(task.name).bold()
                                    Spacer()
                                    Text("\(task.dueDate.formatted(date: .abbreviated, time: .omitted))")
                                    Text("\(task.priority.rawValue)")
                                     
                                }
                            }
                        }
                .padding(.horizontal, 15)
              
                    }
                }
        }
    

  
}
    

    
        
            
        




#Preview {
    SortFunction()
}

    

