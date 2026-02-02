//  🏔️ MTECH Code Challenge ST02: "Profile Page"
//  Concept: Practice using SwiftUI view modifiers to style a view

//  Instructions:
    //  Below is a very basic structure for a profile view. You can view
    //  Using SwiftUI's built in view modifiers, improve the appearance of the profile page.
    //  No specific requirements for what it should look like are set so that you can flex your creativity, but you may want to try to use:
        //  .background, .font, .foregroundStyle, .padding, .border

//  Notes:
    //  Run the playground to see a preview. If you cannot see the preview, make sure Live View is enabled (Press Option + Command + Enter or, in the menu, click Editor -> Live View). Make sure "PlaygroundPage.current.setLiveView(ContentView())" is at the bottom of your code as well.

//  ⌺ Black Diamond Challenge:
    //  In addition to styling the existing Text objects, create other new objects befitting a social media profile page, such as Image, Button, or other views.

import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    var body: some View {
        VStack {
            
            ZStack {
                Image(systemName: "person")
                    .padding()
                    .glassEffect()
            }
            .padding()
            .font(.custom("", size: 150))
            Text("My Profile")
                .font(.custom("American Typewriter", size: 60))
                .bold()
            
            Text("Hi! My name is...")
                .font(.custom("American Typewriter", size: 40))
            Spacer()
            HStack {
                Spacer()
                Text("My interests are...")
                Spacer()
                
                Text("I really dislike...")
                
                Spacer()
            }
            .font(.custom("American Typewriter", size: 20))
            Spacer()
        }
        .padding()
        .glassEffect()
        .padding()
        .frame(width: 500, height: 700)
        .background(LinearGradient(colors: [.white, .blue], startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}

PlaygroundPage.current.setLiveView(ContentView())

