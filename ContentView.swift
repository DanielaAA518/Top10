//
//  ContentView.swift
//  Lab6Practice
//
//  Created by Daniela Akoh on 3/25/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List (books) {book in
                NavigationLink (destination: DetailView (book: book)) {
                    HStack {
                        VStack (alignment: .leading, spacing: 10) {
                            Text("\(book.title)")
                                .font(.system(size: 30, weight: .bold))
                            
                            Text("\(book.subtitle)")
                        } // end VStack
                        
                        Spacer()
                        
                        Image(book.image)
                            .resizable()
                            .frame(width: 100, height: 150)
                            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                        
                    } // end HStack
                } // end DetailView
            } // end List
            .navigationBarTitle("Top 10 NYT Hardcovers")
        } // end Navigation view
    
    } // end body
} // end struct

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ListItem: Identifiable {
    var id = UUID()
    var title: String
    var subtitle: String
    var image: String
} // end struct

var books = [
    ListItem(title: "1. Lessons in Chemistry", subtitle: "Bonnie Garmus", image: "LessonsInChemistry"),
    
    ListItem(title: "2. Tomorrow, and Tomorrow, and Tomorrow", subtitle: "Gabrielle Zevin", image: "TTT"),
    
    ListItem(title: "3. The House in the Pines", subtitle: "Ana Reyes", image: "TheHouseInThePines"),
    
    ListItem(title: "4. The House of Wolves", subtitle: "James Patterson and Mike Lupica", image: "TheHouseOfWolves"),
    
    ListItem(title: "5. Demon Copperhead", subtitle: "Barbara Kingsolver", image: "DemonCopperhead"),
    
    ListItem(title: "6. How to Sell a Haunted House", subtitle: "Grady Hendrix", image: "HowToSellAHauntedHouse"),
    
    ListItem(title: "7. The Boys from Biloxi", subtitle: "John Grisham", image: "TheBoysFromBiloxi"),
    
    ListItem(title: "8. Fairy Tale", subtitle: "Stephen King", image: "FairyTale"),
    
    ListItem(title: "9. Hell Bent", subtitle: "Leigh Bardugo", image: "HellBent"),
    
    ListItem(title: "10. The Cabinet of Dr. Leng", subtitle: "Douglas Preston and Lincoln Child", image: "TheCabinetOfDrLeng")
]
