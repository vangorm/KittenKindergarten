//
//  AgeGroupView.swift
//  Kitten Kindergarten
//
//  Created by Sophia Miles on 8/16/22.
//

import SwiftUI

struct AgeGroup: Identifiable {
    let id = UUID()
    let age: String
    var idealWeight: String?
    var img: String?
    var desc: String?
    var info: [AgeGroup]?
    
    
    // INFO BLOCKS
    //newborn
    static let newbornDesc = AgeGroup(age: "Newborn", idealWeight: "85-120 grams", img: "Newborn",
                                      desc: "Newborn kittens are completely helpless. They cannot hear, see, or feed themselves. Their ears will be folded, their eyes will be closed, and they'll likely still have an umbilical cord attached." +
                                      "\("\n") \("\n")"  +
                                      "Umbilical cords typically fall off on their own between 1-5 days, so if they still have one (like Waffle), then they're likely under a week old!")
    
    //two weeks)
    static let oneWeekDesc = AgeGroup(age: "One Week", idealWeight: "180 - 250 grams", img: "oneWeek",
                                      desc: "Between 7-10 days old, you’ll notice that a kitten’s ears will start to unfold and they may begin opening their eyes (almost like they’re peeking at you!). They’ll be slightly more mobile than newborns." +
                                      "\("\n") \("\n")"  +
                                      "They are still reliant on meals and elimination assistance from their caretaker (mom or a foster).")
    
    //two weeks)
    static let twoWeekDesc = AgeGroup(age: "Two Weeks", idealWeight: "280 - 320 grams", img: "twoWeek",
                                      desc: "Two week old kittens eyes are completely open and they are more aware of the world around them. They are much more mobile and in a roly-poly-chunky stage of life." +
                                      "\("\n") \("\n")"  +
                                      "Some veterinarians recommend starting a deworming regimen at this age. Work closely with your veterinarian and clinic team during a kittens’ early stages.")
    
    //three weeks
    static let threeWeekDesc = AgeGroup(age: "Three Weeks", idealWeight: "350 - 400 grams", img: "threeWeek",
                                        desc: "Three week old kittens will typically start walking and playing with their siblings—even if they are a little wobbly. This age is commonly viewed as one of a kitten’s most adorable ones! Their incisors begin emerging, which helps with the aging guesstimation." +
                                        "\("\n") \("\n")"  +
                                        "3 week olds may begin to explore solid foods if presented with wet food mixed with formula, but they’re not clean eaters, so be prepared for clean up! You may also introduce a easy-entry litter box at this time")
    
    //four weeks
    static let fourWeekDesc = AgeGroup(age: "Four Weeks", idealWeight: "450 - 500 grams", img: "fourWeek",
                                       desc: "Four week old kittens are sturdy, playful, and engaging much more with their environment. Some veterinarians may recommend that kittens at this age begin a vaccination protocol, particularly if they are in a shelter environment. " +
                                       "\("\n") \("\n")"  +
                                       "Their canines are beginning to emerge which helps with the aging process and they are often self-imposing the weaning process on themselves and become finicky with the bottle (if being bottle fed).")
    
    //five weeks
    static let fiveWeekDesc = AgeGroup(age: "Five Weeks", idealWeight: "520 - 575 grams", img: "fiveWeek",
                                       desc: "Five week old kittens begin to really develop their personalities. They can be spunky, sweet, cuddly, playful, and everything in between! Their premolars are emerging which continues to help with the aging process." +
                                       "\("\n") \("\n")"  +
                                       "They are also continuing to wean and will explore more with gruel (formula and wet food), and may begin to prefer to eat wet food exclusively.")
    
    //six weeks
    static let sixWeekDesc = AgeGroup(age: "Six Weeks", idealWeight: "630 - 680 grams", img: "sixWeek",
                                      desc: "Six week old kittens have all of their baby teeth in and are eating and playing confidently. They may be grooming themselves and their siblings and use their nails to scratch on surfaces. " +
                                      "\("\n") \("\n")"  +
                                      "Aging kittens around this age may rely more on viewing behavior, weight, and eating habits. Dry food can be introduced at this time and they are likely completely off of the bottle (if being bottle fed).")
    
    //seven weeks
    static let sevenWeekDesc = AgeGroup(age: "Seven Weeks", idealWeight: "700 - 800 grams", img: "sevenWeek",
                                        desc: "Around 7 weeks old a kittens’ eyes may begin to shift from blue into amber, yellow, green, or stay blue like Waffle’s. They’re active, busy, inquisitive, and eating well on their own." +
                                        "\("\n") \("\n")"  +
                                        "Kittens at this age are typically using the litter box regularly and open and curious about the world around them, making this a prime socialization age!")
    
    //eight weeks
    static let eightWeekDesc = AgeGroup(age: "Eight Weeks", idealWeight: "800 - 900 grams", img: "eightWeek",
                                        desc: "Eight week old kittens should be slowing down in their growth and typically weigh around 2 pounds. Many veterinarians (particularly those in shelter environments) will spay and neuter kittens at this age to prepare them to go to their forever homes." +
                                        "\("\n") \("\n")"  +
                                        "This journey of kitten hood continues, but at this point Waffle is eating independently    and if he wasn’t born incontinent, he would be able to eliminate reliably in a litter box all on his own.")
    
    //Sections
    static let newborn = AgeGroup(age: "Newborn", info: [AgeGroup.newbornDesc])
    static let oneWeek = AgeGroup(age: "One Week", info: [AgeGroup.oneWeekDesc])
    static let twoWeek = AgeGroup(age: "Two Weeks", info: [AgeGroup.twoWeekDesc])
    static let threeWeek = AgeGroup(age: "Three Weeks", info: [AgeGroup.threeWeekDesc])
    static let fourWeek = AgeGroup(age: "Four Weeks", info: [AgeGroup.fourWeekDesc])
    static let fiveWeek = AgeGroup(age: "Five Weeks", info: [AgeGroup.fiveWeekDesc])
    static let sixWeek = AgeGroup(age: "Six Weeks", info: [AgeGroup.sixWeekDesc])
    static let sevenWeek = AgeGroup(age: "Seven Weeks", info: [AgeGroup.sevenWeekDesc])
    static let eightWeek = AgeGroup(age: "Eight Weeks", info: [AgeGroup.eightWeekDesc])
}

struct AgeGroupRow : View {
    
    let ageGroupRow : AgeGroup
    
    var body : some View {
        VStack{
            Spacer()
            if (ageGroupRow.img != nil) {
                Image(ageGroupRow.img!)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 250, height: 250, alignment: .center)
                    .clipShape(Circle())
            }
            
            Text(ageGroupRow.age)
                .font(.system(size: 35, weight: .thin))
                .foregroundColor(.mint)
                .accessibilityLabel(ageGroupRow.age)
            
            
            if (ageGroupRow.idealWeight != nil) {
                Text(ageGroupRow.idealWeight!)
                    .font(.system(size: 20, weight: .thin))
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            if (ageGroupRow.desc != nil) {
                Text(ageGroupRow.desc!)
                    .frame(width: 300, alignment: .leading)
                    .font(.system(size: 15, weight: .thin))
                    .lineSpacing(12.0)
                    .multilineTextAlignment(.center)
                    .fixedSize()
                
                Spacer()
            }
            
        }
    }
}

struct AgeGroupView: View {
    
    var body: some View {
        let info: [AgeGroup] = [.newborn, .oneWeek, .twoWeek, .threeWeek, .fourWeek, .fiveWeek, .sixWeek, .sevenWeek, .eightWeek]
        
        List(info, children: \.info) {
            row in
            
            AgeGroupRow(ageGroupRow: row)
        }
    }
}

