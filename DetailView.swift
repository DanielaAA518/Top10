//
//  DetailView.swift
//  Top10
//
//  Created by Daniela Akoh on 3/25/23.
//

import SwiftUI

struct DetailView: View {
    var book: ListItem = books[0]
    @State var showPopup = false
    
    var body: some View {
        VStack (alignment: .leading) {
            Image(book.image)
                .resizable()
                .frame(width: 300, height: 400)
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                .onTapGesture {
                    showPopup.toggle()
                }
                .sheet(isPresented: $showPopup, content: {
                    PopupView(book: book)
                })
            
            Text(book.title)
                .font(.title)
            
            Text(book.subtitle)
                .font(.subheadline)
            
            Spacer()
        } // end VStack
    } // end body
} // end struct

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(book: books[0])
    }
}
