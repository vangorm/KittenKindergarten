//
//  ContentView.swift
//  Kitten Kindergarten
//
//  Created by Sophia Miles on 8/15/22.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            
            VStack {
                //image homescreen
                Image("HomeKitten")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300, height: 300, alignment: .center)
                    .clipShape(Circle())
                
                Spacer()
                
                //title of site
                Text("Kitten Kindergarten")
                    .font(.system(size: 45, weight: .thin))
                    .foregroundColor(.gray)
                    .accessibilityLabel("Kitten Kindergarten")
                
                Spacer()
                
                //button to growth chart
                NavigationLink(destination: AgeGroupView()) {
                    Text("Growth Chart")
                        .font(.system(size: 30, weight: .thin))
                }
                .font(.system(size: 30, weight: .thin))
                .buttonStyle(GrowingButton())
                
                Spacer()
                
                //button to age quiz
                NavigationLink(destination: AgeQuizView()) {
                    Text("Age Quiz")
                        .font(.system(size: 30, weight: .thin))
                }
                .font(.system(size: 30, weight: .thin))
                .buttonStyle(GrowingButton())
            
                
                Spacer()
                
                //button to age group database
                NavigationLink(destination: GroupListView()) {
                    Text("My Age Groups")
                        .font(.system(size: 30, weight: .thin))
                }
                .font(.system(size: 30, weight: .thin))
                .buttonStyle(GrowingButton())
                
                Spacer()
                
            }
            //Nav tags
            .navigationBarHidden(true)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
