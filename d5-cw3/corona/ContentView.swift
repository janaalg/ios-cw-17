//
//  ContentView.swift
//  corona
//
//  Created by Shaimaa on 07/02/2022.
//

import SwiftUI


// يجب عمل هيكل وكائنات من الهيكل
var people = [
    UserCovidInfo(fullName: "sara fahad" , area: "alrouda", numberOfDoses: 2),
    
    UserCovidInfo(fullName: "noura mohammad", area: "aridya", numberOfDoses: 1),
    
UserCovidInfo(fullName: "rashid ali", area: "alahmidi", numberOfDoses: 0)
    
]

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.gray
                .opacity(0.3)
                .ignoresSafeArea()
            VStack{
                Image("corona")
                    .resizable()
                    .scaledToFit()
                Text("حالات كورونا الجديدة")
                    .font(.system(size: 30, weight: .bold, design: .default))
                    .padding()
                // name of new cases
                ForEach(people, id: \.id ) { i in
                VStack{
                
                    Text("\(i.fullName)")
                    
                    Text("\(i.area)")
                    
                    Text("\(i.numberOfDoses)")
                    
    
                Divider()
                }
              
                }
                Spacer()
                HStack{
                    Text("آخر تحديث ١٥-٣-٢٠٢٢")
                        .font(.system(size: 20, weight: .bold, design: .default))
                    Image(systemName: "repeat.circle.fill")
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5882, blue: 0.1961, alpha: 1)))
                        .font(.system(size: 30))
                }
                .padding()
                .border(Color.white, width: 5)
                .cornerRadius(10)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}






