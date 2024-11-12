//
//  ListView.swift
//  SwiftUIProject
//
//  Created by Gayoung Kim on 11/11/24.
//

import SwiftUI

struct ListView: View {
    @State var favoriteFruits = [
        Fruit(name: "Apple", matchFruits: ["Banana", "Orange", "Grape"], price: "1000"),
        Fruit(name: "Banana", matchFruits: ["Banana", "Orange", "Strawberry"], price: "2000"),
        Fruit(name: "Orange", matchFruits: ["Papaya", "Apple", "Pineapple"], price: "3000"),
        Fruit(name: "Grape", matchFruits: ["Kiwi", "Orange", "Kiwi"], price: "4000"),
        Fruit(name: "Strawberry", matchFruits: ["Banana", "Orange", "Mango"], price: "5000"),
        Fruit(name: "Pineapple", matchFruits: ["Banana", "Orange", "Papaya"], price: "6000"),
        Fruit(name: "Kiwi", matchFruits: ["Kiwi", "Papaya", "Grape"], price: "7000"),
        Fruit(name: "Mango", matchFruits: ["Banana", "Orange", "Grape"], price: "8000"),
        Fruit(name: "Papaya", matchFruits: ["Papaya", "Strawberry", "Strawberry"], price: "9000"),
        Fruit(name: "apple", matchFruits: ["Banana", "Orange", "Grape"], price: "10000"),
        Fruit(name: "Apple", matchFruits: ["Banana", "Orange"], price: "1000"),
        Fruit(name: "Banana", matchFruits: ["Banana", "Orange", "Strawberry"], price: "2000"),
        Fruit(name: "Orange", matchFruits: ["Papaya", "Apple", "Pineapple"], price: "3000"),
        Fruit(name: "Grape", matchFruits: ["Kiwi", "Orange", "Kiwi"], price: "4000"),
        Fruit(name: "Strawberry", matchFruits: ["Banana", "Orange", "Mango"], price: "5000"),
        Fruit(name: "Pineapple", matchFruits: ["Banana", "Orange", "Papaya"], price: "6000"),
        Fruit(name: "Kiwi", matchFruits: ["Kiwi", "Papaya", "Grape"], price: "7000"),
        Fruit(name: "Mango", matchFruits: ["Banana", "Orange", "Grape"], price: "8000"),
        Fruit(name: "Papaya", matchFruits: ["Papaya", "Strawberry", "Strawberry"], price: "9000"),
        Fruit(name: "apple", matchFruits: ["Banana", "Orange", "Grape"], price: "10000")
    ]
    
    @State var fruitName: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    TextField("과일 이름", text: $fruitName)
                    Button {
                        favoriteFruits.append(Fruit(name: fruitName,
                                                    matchFruits: ["Kiwi", "Papaya"],
                                                    price: "5500"))
                        
                    } label: {
                        Text("추가")
                            .padding()
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
                .padding(.horizontal, 15)
                
                List {
                    ForEach(favoriteFruits, id: \.self) { fruit in
                        HStack {
                            VStack(alignment: .leading) {
                                Text("\(fruit.name)")
                                    .font(.headline)
                                Text("\(fruit.matchFruits.joined(separator: ", "))")
                                    .font(.caption)
                            }
                            
                            Spacer()
                            
                            Text("\(fruit.price)")
                        }
                    }.onDelete { indexSet in
                        favoriteFruits.remove(atOffsets: indexSet)
                    }
                }
                .navigationTitle("Fruits List")
            }
        }
    }
}

#Preview {
    ListView()
}
