//
//  ContentView.swift
//  Mogong_StudyWork
//
//  Created by 박서연 on 2023/06/19.
//

// 로그인 항목

import SwiftUI

struct ContentView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var toggling = false
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Text("Introduce your credentials")
                    .foregroundColor(.gray)
                
                TextField("Email", text: $email)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.emailAddress)
                SecureField("Password", text: $password)
                    .textFieldStyle(.roundedBorder)
                
                Toggle(isOn: $toggling) {
                    Text("Agree to terms and conditions")
                        .font(.subheadline)
                }
                
                Button("Sign in") {
                    print("버튼이 눌렸음")
                }.disabled(email.isEmpty || password.isEmpty || !toggling)
                .buttonStyle(.borderedProminent)
                .frame(width: 350, height: 140)
                
                .navigationTitle("Log in")
            }
            .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
