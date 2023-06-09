//
//  StepperBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 10.06.2023.
//

import SwiftUI

struct StepperBootcamp: View {
    
    @State var stepperValue: Int = 10
    @State var stepper2Value: Int = 0
    
    var body: some View {
        VStack {
            Stepper("Stepper 1: \(stepperValue)", value: $stepperValue)
                .padding(.horizontal, 50)

            Stepper {
                HStack{
                    Text("Stepper 2")
                    Text("\(stepper2Value)")
                }
            } onIncrement: {
                changeStepperValue(amount: 100)
            } onDecrement: {
                changeStepperValue(amount: -100)
            }
            
            .padding(.horizontal, 50)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 100 + CGFloat(stepper2Value), height: 100)

        }
        .padding()
    }
    
    func changeStepperValue(amount: Int) {
        withAnimation(.linear) {
            stepper2Value += amount
        }
    }
}

struct StepperBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StepperBootcamp()
    }
}
