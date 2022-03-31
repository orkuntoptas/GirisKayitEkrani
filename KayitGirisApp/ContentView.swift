//
//  ContentView.swift
//  KayitGirisApp
//
//  Created by Orkun Toptaş on 25.03.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var girisSegmesi: Bool = false
    @State var email: String = ""
    @State var sifre: String = ""
    var body: some View {
        NavigationView{
            ScrollView{
                VStack() {
                    Picker(selection: $girisSegmesi) {
                        Text("Giris Yap")
                            .tag(true)
                        Text("Kayit Ol")
                            .tag(false)
                    } label: {
                        Text("")
                        
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }

                if !girisSegmesi {
                    Button {
                        
                    } label: {
                        Image(systemName: "person.circle.fill")
                            .font(.system(size: 80, weight: .bold, design: .default))
                            .padding()
                        }
                }
                    Group{
                    TextField("Email", text: $email)
                            .keyboardType(.emailAddress)
                    SecureField("Şifre", text: $sifre)
                    }.padding()
                    .textInputAutocapitalization(TextInputAutocapitalization.never)
              
                Button {
                    
                } label: {
                    HStack {
                        Spacer()
                    Text(girisSegmesi ? "Giriş Yap" : "Kayıt Ol")
                            .foregroundColor(.white).bold()
                        .padding(.vertical, 12)
                    Spacer()
                    }.background(Color.blue)
                }
                
                if girisSegmesi {
                Button {
                    
                } label: {
                    Text("Şifremi Unuttum")
                        .font(.system(size: 14))
                        .padding()
                }
                }
                
            }.padding()
            .navigationTitle(girisSegmesi ? "Giriş Yap" : "Kayıt Ol")
            .background(Color(.init(white: 0, alpha: 0.05)).ignoresSafeArea())
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
