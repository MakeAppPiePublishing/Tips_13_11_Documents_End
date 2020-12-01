//
//  ContentView.swift
//  SwiftTinyEditor
//
//  Created by Steven Lipton on 12/1/20.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: SwiftTinyEditorDocument
// hello pizza
    var body: some View {
        VStack{
            Text("Tiny Editor").font(.headline)
            Divider()
            TextEditor(text: $document.text)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .keyboardType(.asciiCapable)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(SwiftTinyEditorDocument()))
    }
}
