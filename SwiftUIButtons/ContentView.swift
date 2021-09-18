//
//  ContentView.swift
//  SwiftUIButtons
//
//  Created by Stephen Astels on 2021-09-18.
//

import SwiftUI

struct ContentView: View {
  @State var isUp = true

  var body: some View {
    ZStack {
      Color(UIColor.systemGray5).ignoresSafeArea()

      VStack(spacing: 20) {
        HStack(spacing: 20) {
          Button(action: {}) {
            Text("Default")
          }.buttonStyle(CustomButtonStyle())

          Button(action: { isUp.toggle() }) {
            Text("Light")
          }.buttonStyle(CustomButtonStyle(.default(type: isUp ? .light : .success)))

          Button(action: {}) {
            Text("Success")
          }.buttonStyle(CustomButtonStyle(.default(type: .success)))

          Button(action: {}) {
            Text("Info")
          }.buttonStyle(CustomButtonStyle(.default(type: .info)))

          Button(action: {}) {
            Text("Warning")
          }.buttonStyle(CustomButtonStyle(.default(type: .warning)))
          Button(action: {}) {
            Text("Danger")
          }.buttonStyle(CustomButtonStyle(.default(type: .danger)))

          Button(action: {}) {
            Text("Dark")
          }.buttonStyle(CustomButtonStyle(.default(type: .dark)))
        }

        HStack(spacing: 20) {
          Button(action: {}) {
            Text("Default")
          }.buttonStyle(CustomButtonStyle(.default(type: .primary)))

          Button(action: {}) {
            Text("Transparent")
          }.buttonStyle(CustomButtonStyle(.transparent(type: .primary)))

          Button(action: {}) {
            Text("Outline")
          }.buttonStyle(CustomButtonStyle(.outline(type: .primary)))

          Button(action: {}) {
            Text("Rounded")
          }.buttonStyle(CustomButtonStyle(.rounded(type: .primary)))
        }

        HStack(spacing: 20) {
          Button(action: {}) {
            Text("Small")
          }.buttonStyle(CustomButtonStyle(size: .small))

          Button(action: {}) {
            Text("Default")
          }.buttonStyle(CustomButtonStyle())

          Button(action: {}) {
            Text("Large")
          }.buttonStyle(CustomButtonStyle(size: .large))
        }
        Button(action: {}) {
          Text("FullWidth")
        }.buttonStyle(CustomButtonStyle(isFullWidth: true))
      }.padding()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
