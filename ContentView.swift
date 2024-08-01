//
//  ContentView.swift
//  app
//
//  Created by User on 13/09/23.
//

import SwiftUI
struct Product: Identifiable{
    let id=UUID()
    let name:String
    let price:Double
    let imagename:String
}
let sampleproduct=[
    Product(name: "Macbook M2",price:989.99, imagename:"product1"),
    Product(name:"ipad",price:200.90,imagename:"product2"),
    Product(name:"iphone",price:1000.90,imagename:"product3"),
    Product(name:"iwatch",price:100.11,imagename:"product4"),
    Product(name: "Macbook M2",price:989.99, imagename:"product1"),
    Product(name:"ipad",price:200.90,imagename:"product2"),
    Product(name:"iphone",price:1000.90,imagename:"product3"),
    Product(name:"iwatch",price:100.11,imagename:"product4")
]
struct ProductTile:View{
    let product:Product
    var body:some View{
        VStack(alignment: .leading, spacing: 8){
            Image(product.imagename)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxHeight:150)
            Text(product.name)
                .font(.headline)
            Text("$\(String(format:"%.2f",product.price))")
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 4)
    }
}
struct ContentView: View {
    let columns:[GridItem]=[
        GridItem(.flexible(minimum: 100, maximum:200),spacing: 16),
        GridItem(.flexible(minimum: 100, maximum:200),spacing: 16)
    ]
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: columns){
                    ForEach(sampleproduct) { product in
                        NavigationLink(destination: ProductDetail(product:product)){
                            ProductTile(product:product)
                        }
                    }
                }
                .padding(30)
            }
            .navigationTitle("E-comerence store app")
        }
    }
    struct ProductDetail :View{
        let product:Product
        var body:some View {
            VStack{Image(product.imagename)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 300)
            Text(product.name)
                        .font(.title)
                        .padding()
            Text("price: $\(String(format:"%.2f",product.price))")
                .font(.headline)
                .padding()
            Spacer()
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
                                 }
