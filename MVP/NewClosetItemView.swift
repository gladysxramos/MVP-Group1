//
//  NewClosetItemView.swift
//  MVP
//
//  Created by Scholar on 7/31/24.
//

import SwiftUI
import SwiftData

struct NewClosetItemView: View {
    @Bindable var closetItem: ClosetItem
    @Environment(\.modelContext) var modelContext
    @Binding var showNewPiece: Bool
    
    var body: some View {
        VStack {
            TextField("Enter name of closet item", text: $closetItem.title, axis: .vertical)
                .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                .padding()
            DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ })
            // insert gladys' image picker
            
            Button {
                
            } label: {
                Text("Save")
            }
        }
    }
    
    func addClosetItem() {
        
    }
}

//#Preview {
//    NewClosetItemView()
//}
