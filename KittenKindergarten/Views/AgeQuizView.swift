//
//  AgeQuizView.swift
//  Kitten Kindergarten
//
//  Created by Sophia Miles on 8/17/22.
//

import SwiftUI

struct AgeQuizView: View {
    
    var body: some View {
        VStack (spacing: 30) {
            //image
            Image("iconKitten")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 300, alignment: .center)
                .clipShape(Circle())
            
            VStack (spacing: 20){
                //Title
                Text("Age Guesser")
                    .mintTitle()
                
                //Description
                Text("Aging kittens isn't an exact science, but we can try! \("\n") Are you ready?")
                    .font(.system(size: 18, weight: .thin))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
            }
            //Move
            NavigationLink(destination: QuestionView()) {
                Text("Get Started")
            }
            .buttonStyle(GrowingButton())
        }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
    }
}

struct AgeQuizView_Previews: PreviewProvider {
    static var previews: some View {
        AgeQuizView()
    }
}
