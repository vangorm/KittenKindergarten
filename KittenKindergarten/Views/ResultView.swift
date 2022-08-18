//
//  ResultView.swift
//  Kitten Kindergarten
//
//  Created by Sophia Miles on 8/17/22.
//
import SwiftUI

struct ResultView: View {
    var index: Int
    var isEightWeeks: Bool

    var body: some View {
        
        VStack (spacing: 30) {

                //Title
                Text("Your Results are Ready!")
                    .mintTitle()
                
                //Description
                Text("We suspect your kitten is a ")
                    .font(.system(size: 18, weight: .thin))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
            
            switch (index) {
            //Newborn
            case 0:
                Image("Newborn")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 250, height: 250, alignment: .center)
                    .clipShape(Circle())
                Text("Newborn")
                    .font(.system(size: 35, weight: .thin))
                    .foregroundColor(.gray)
            //1 week old
            case 1:
                Image("oneWeek")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 250, height: 250, alignment: .center)
                    .clipShape(Circle())
                Text("One Week Old")
                    .font(.system(size: 35, weight: .thin))
                    .foregroundColor(.gray)
            //2 week old
            case 2:
                Image("twoWeek")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 250, height: 250, alignment: .center)
                    .clipShape(Circle())
                Text("Two Week Old")
                    .font(.system(size: 35, weight: .thin))
                    .foregroundColor(.gray)
            //3 week old
            case 3:
                Image("threeWeek")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 250, height: 250, alignment: .center)
                    .clipShape(Circle())
                Text("Three Week Old")
                    .font(.system(size: 35, weight: .thin))
                    .foregroundColor(.gray)
            //4 week old
            case 4:
                Image("fourWeek")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 250, height: 250, alignment: .center)
                    .clipShape(Circle())
                Text("Four Week Old")
                    .font(.system(size: 35, weight: .thin))
                    .foregroundColor(.gray)
            //5 week old
            case 5:
                Image("fiveWeek")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 250, height: 250, alignment: .center)
                    .clipShape(Circle())
                Text("Five Week Old")
                    .font(.system(size: 35, weight: .thin))
                    .foregroundColor(.gray)
            //6 week old
            case 6:
                Image("sixWeek")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 250, height: 250, alignment: .center)
                    .clipShape(Circle())
                Text("Six Week Old")
                    .font(.system(size: 35, weight: .thin))
                    .foregroundColor(.gray)
            //7-8 week old
            case 7:
                //7 weeks
                if (!isEightWeeks) {
                    Image("sevenWeek")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 250, height: 250, alignment: .center)
                        .clipShape(Circle())
                    Text("Seven Week Old")
                        .font(.system(size: 35, weight: .thin))
                        .foregroundColor(.gray)
                }
                //8 weeks
                else {
                    Image("eightWeek")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 250, height: 250, alignment: .center)
                        .clipShape(Circle())
                    Text("Eight Week Old")
                        .font(.system(size: 35, weight: .thin))
                        .foregroundColor(.gray)
                }
            default:
                Text("None found")
                    .font(.system(size: 25, weight: .thin))
                    .foregroundColor(.gray)
            }
            
            Text("We have more information on this age group on our Growth Chart page!")
                .font(.system(size: 18, weight: .thin))
                .multilineTextAlignment(.center)
                .foregroundColor(.gray)
            
            //Return Home
            NavigationLink(destination: ContentView()
                .navigationBarHidden(true)) {
                Text("Return Home")
            }
            .padding()
            .buttonStyle(GrowingButton())
            
        }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
    }
}
