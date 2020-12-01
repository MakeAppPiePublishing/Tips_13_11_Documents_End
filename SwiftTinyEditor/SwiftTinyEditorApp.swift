//
//  SwiftTinyEditorApp.swift
//  SwiftTinyEditor
//
//  Created by Steven Lipton on 12/1/20.
//

import SwiftUI

@main
struct SwiftTinyEditorApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: SwiftTinyEditorDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
