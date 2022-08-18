//
//  QuestionView.swift
//  Kitten Kindergarten
//
//  Created by Sophia Miles on 8/17/22.
//

import SwiftUI

struct Answer: Equatable {
    var text: String
    var isYes: Bool
}

struct QuestionView: View {
    @State var resultsReady = false
    @State var index = 0
    @State var answers =
    [Answer(text: "Has the kitten's umbilical cord fallen off?", isYes: false),
     Answer(text: "Are the kitten's eyes open and ears unfolded?", isYes: false),
     Answer(text: "Are any teeth visible or emerging?", isYes: false),
     Answer(text: "Are canines visible or emerging?", isYes: false),
     Answer(text: "Are premolars visible or emerging?", isYes: false),
     Answer(text: "Are molars visible or emerging?", isYes: false),
     Answer(text: "Have the kitten's eyes begun to change color?", isYes: false),
     Answer(text: "Does the kitten have adult-colored eyes and weighs roughly 2 pounds?", isYes: false)
    ]
    
    @State var isEightWeeks = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 40) {
            HStack{
                Text("Age Guesser")
                    .mintTitle()
                    .padding()
                Spacer()
            }
            
            VStack (alignment: .leading, spacing: 20) {
                
                //QUESTION
                Text(answers[index].text)
                    .font(.system(size: 20, weight: .thin))
                    .foregroundColor(.gray)
                    .padding()
                
                //ANSWER
                VStack {
                    //YES
                    HStack (spacing: 20) {
                        Image(systemName: "circle.fill")
                            .font(.caption)
                        Text("Yes")
                            .bold()
                    }
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.mint)
                    .background(.white)
                    .cornerRadius(10)
                    .shadow(color: .gray, radius: 5, x: 0.5, y: 0.5)
                    .onTapGesture {
                        //only increment if results aren't ready
                        if (!resultsReady && index < 7) {
                            answers[index].isYes = true
                            index = index + 1
                        }
                        else if (index == 7) {
                            //if yes again, make 8 weeks old true
                            isEightWeeks = true
                            resultsReady = true
                        }
                    }
                    
                    //NO
                    HStack (spacing: 20) {
                        Image(systemName: "circle.fill")
                            .font(.caption)
                        Text("No")
                            .bold()
                    }
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.mint)
                    .background(.white)
                    .cornerRadius(10)
                    .shadow(color: .gray, radius: 5, x: 0.5, y: 0.5)
                    .onTapGesture {
                        //only update if results aren't ready
                        if (!resultsReady) {
                            answers[index].isYes = false
                            resultsReady = true
                        }
                    }
                    
                    //Move
                    NavigationLink(destination: ResultView(index: index, isEightWeeks: isEightWeeks)) {
                        Text("Results Ready")
                    }
                    .padding()
                    .buttonStyle(GrowingButton())
                    .opacity(resultsReady ? 1.0 : 0.2)
                    .disabled(!resultsReady)
                    
                    Spacer()
                    
                }
                .padding()
            }
        }
        .navigationBarHidden(true)
    }
}


