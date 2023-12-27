//
//  PopupView.swift
//  Lab6Practice
//
//  Created by Daniela Akoh on 3/25/23.
//

import SwiftUI

struct PopupView: View {
    var book: ListItem = books[0]
    @State private var textDesc: String = ""
    
    var body: some View {
        VStack {
            Text(textDesc)
        } // end VStack
        .task {
            outputDesc(novel: book.title)
        } // end task
    } // end body
    
    func outputDesc(novel: String)
    {
        if novel == "1. Lessons in Chemistry" {
            textDesc = "A scientist and single mother living in California in the 1960s becomes a star on a TV cooking show."
        }
        else if novel == "2. Tomorrow, and Tomorrow, and Tomorrow" {
            textDesc = "Two friends find their partnership challenged in the world of video game design."
        }
        else if novel == "3. The House in the Pines" {
            textDesc = "Seven years after witnessing her best friend drop dead, Maya returns to her Berkshires hometown to piece together what happened."
        }
        else if novel == "4. The House of Wolves" {
            textDesc = "After her father is murdered, Jenny Wolf becomes the head of a powerful family in California."
        }
        else if novel == "5. Demon Copperhead" {
            textDesc = "A reimagining of Charles Dickens’s “David Copperfield” set in the mountains of southern Appalachia."
        }
        else if novel == "6. How to Sell a Haunted House" {
            textDesc = "After her parents die, Louise encounters more than she expected in dealing with the family home."
        }
        else if novel == "7. The Boys from Biloxi" {
            textDesc = "Two childhood friends follow in their fathers’ footsteps, which puts them on opposite sides of the law."
        }
        else if novel == "8. Fairy Tale" {
            textDesc = "A high school kid inherits a shed that is a portal to another world where good and evil are at war."
        }
        else if novel == "9. Hell Bent" {
            textDesc = "The second book in the Alex Stern series. Alex risks her future at Lethe and Yale to get Darlington out of purgatory."
        }
        else if novel == "10. The Cabinet of Dr. Leng" {
            textDesc = "The 21st book in the Pendergast series. Constance Greene travels back in time to prevent the deaths of her siblings."
        }
        else {
            textDesc = "No data found!"
        }
    } // end func
    
} // end struct

struct PopupView_Previews: PreviewProvider {
    static var previews: some View {
        PopupView(book: books[0])
    }
}
