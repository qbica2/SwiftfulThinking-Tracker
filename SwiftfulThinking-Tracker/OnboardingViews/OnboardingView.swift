//
//  OnboardingView.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 12.06.2023.
//

import SwiftUI

struct OnboardingView: View {
    
//    Onboarding States:
    /*
     0- Welcome
     1- Name
     2- Age
     3- Gender
     */
    
    @State var onboardingState: Int = 0
    
    @State var name: String = ""
    @State var age: Double = 44
    @State var gender: String = ""
    
    @State var showAlert: Bool = false
    @State var alertTitle: String = ""
    @State var alertMessage: String = ""
    
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignIn: Bool = false
    
    let transition: AnyTransition = .asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading))

    
    var body: some View {
        ZStack {
            
            ZStack {
                switch onboardingState {
                case 0:
                    welcomeScreen
                        .transition(transition)
                case 1:
                    addNameSection
                        .transition(transition)
                case 2:
                    addAgeSection
                        .transition(transition)
                case 3:
                    addGenderSection
                        .transition(transition)
                default:
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundColor(.green)
                }
                
                
                VStack {
                    Spacer()
                    bottomButton
                }
                .padding(30)
            }
        }
        .alert(alertTitle, isPresented: $showAlert) {
            Button("OK") {
                showAlert.toggle()
            }
        } message: {
            Text(alertMessage)
        }

    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
//        OnboardingView()
        IntroView()
    }
}


//MARK: -COMPONENTS
extension OnboardingView {
    
    private var bottomButton: some View {
        Text(onboardingState == 0 ? "Sign up".uppercased() :
                onboardingState == 3 ? "finish".uppercased() :
                "Next".uppercased())
            .font(.headline)
            .foregroundColor(.pink)
            .padding()
            .frame(maxWidth: .infinity)
            .background(
                Color.white
                    .cornerRadius(20)
            )
            .onTapGesture {
                handleNextButtonPressed()
            }
        
    }
    
    private var welcomeScreen: some View {
        VStack(spacing: 40) {
                 Spacer()
                 Image(systemName: "heart.text.square.fill")
                     .resizable()
                     .scaledToFit()
                     .frame(width: 200, height: 200)
                     .foregroundColor(.white)
                 Text("Find your match.")
                     .font(.largeTitle)
                     .fontWeight(.semibold)
                     .foregroundColor(.white)
                     .overlay(
                         Capsule(style: .continuous)
                             .frame(height: 3)
                             .offset(y: 5)
                             .foregroundColor(.white)
                         , alignment: .bottom
                     )
                 Text("This is the #1 app for finding your match online! In this tutorial we are practicing using AppStorage and other SwiftUI techniques.")
                     .fontWeight(.medium)
                     .foregroundColor(.white)
                 Spacer()
                 Spacer()
             }
             .multilineTextAlignment(.center)
             .padding(30)
    }
    
    private var addNameSection: some View {
        VStack (spacing: 20) {
            Spacer()
            Text("What's your name?")
                .font(.largeTitle)
                .foregroundColor(.white)
                .fontWeight(.semibold)
            TextField("Your name here...", text: $name)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(Color.white)
                .cornerRadius(10)
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var addAgeSection: some View {
        VStack (spacing: 20) {
            Spacer()
            Text("What's your age?")
                .font(.largeTitle)
                .foregroundColor(.white)
                .fontWeight(.semibold)
            Text(String(format: "%.0f", age))
                .font(.largeTitle)
                .foregroundColor(.white)
                .fontWeight(.semibold)
            
            Slider(value: $age, in: 18...100, step: 1) {
                Text("Pick your age")
            }
            .tint(.white)
            
            Spacer()
            Spacer()
           
        }
        .padding(30)
    }
    
    private var addGenderSection: some View {
        VStack(spacing: 20 ) {
            Spacer()
            Text("What's your gender?")
                .font(.largeTitle)
                .foregroundColor(.white)
                .fontWeight(.semibold)
            
            Picker(selection: $gender) {
                Text("Male").tag("Male")
                Text("Female").tag("Female")
                Text("Non-Binary").tag("Non-Binary")
            } label: {
                Text(gender.count > 1 ? gender : "Select a gender")
                    .font(.headline)
                    .foregroundColor(.pink)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(10)
            }
            .pickerStyle(.segmented)
            .tint(.white)
            .padding()
            Spacer()
            Spacer()

        }
    }
}

//MARK: - FUNCTIONS

extension OnboardingView {
    
    func handleNextButtonPressed(){
        
        switch onboardingState {
        case 1:
            guard name.count >= 3 else {
                showAlert(title: "Error!", message: "Your name must be at least 3 characters long! 😩")
                return
            }
        case 3:
            guard gender.count > 1 else {
                showAlert(title: "Error!", message: "Please select a gender before moving forward! 😳")
                return
            }
        default:
            break
            
        }
        
        if onboardingState == 3 {
            signIn()
        } else {
            withAnimation(.spring()) {
                onboardingState += 1
            }
        }
    }
    
    
    func signIn () {
        currentUserName = name
        currentUserAge = Int(age)
        currentUserGender = gender
        
        withAnimation(.spring()) {
            currentUserSignIn = true
        }
    }
    
    func showAlert(title: String, message: String) {
        alertTitle = title
        alertMessage = message
        showAlert.toggle()
    }
}

