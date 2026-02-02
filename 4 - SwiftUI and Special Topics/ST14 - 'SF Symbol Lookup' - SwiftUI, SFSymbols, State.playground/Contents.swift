//  🏔️ MTECH Code Challenge ST14: "SF Symbol Lookup"
//  Concept: Practice modifying SF Symbol images' properties to see the range of options they have for improving your app's visual design.

//  Instructions:
    //  You have an app which displays a variety of SF Symbol icons. Already in place is a picker which chooses which symbol to display.
    //  Add an interface that allows you to change the following properties of SF Symbols:
        //  Scale
        //  Weight (Bold/Not bold)
        //  Rendering mode (Multicolor, Monochromatic, Heirarchical, Palette)
        //  Color/Palette (primary, secondary, and tertiary options)
            //  You can implement this however you like. Some ideas would be: - A ColorPicker, a Picker with hardcoded options, a Switch with 2 color options, etc.
        //  Variable coloring percentage
            //  Notice the variableValue parameter of the Image initalizer below and how it makes half the bars of the rainbow slightly transparent

    //  To see examples of how these options work, download and play with the SF Symbols app: 🔗https://devimages-cdn.apple.com/design/resources/download/SF-Symbols-5.1.dmg
#fileLiteral(resourceName: "SF Symbols.pkg")
//  ⌺ Black Diamond Challenge:
    //  Add all symbols from the SF Symbols app to your app (you can copy all symbol names by selecting all of them from the "All" category, right click, and copy names)
    //  Replace the Picker to better accommodate the new large list--what would be a better interface to sort through so many choices?
    //  Add an interface that uses the .symbolVariant(_: SymbolVariants) modifier to allow you to switch between available symbol variants

import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    let symbolChoices = ["cloud.rainbow.half.fill", "apple.terminal.on.rectangle.fill", "badge.plus.radiowaves.right", "sun.rain.fill"]
    let possibleRederingStyles: [String] = ["hierarchical", "monochrome", "multicolor", "palette"]
    @State private var selectedSymbol: String = "cloud.rainbow.half.fill"
    @State var scale: CGFloat = 1
    @State var isHeavy = false
    @State var color: Color = .black
    @State var percentColored: CGFloat = 5
    @State var renderingForm: String = "hierarchical"
    @State var renderingFormAcctual: SymbolRenderingMode = .hierarchical
    
    var body: some View {
        ScrollView {
            VStack {
                Picker("Select a Symbol ", selection: $selectedSymbol) {
                    ForEach(symbolChoices, id: \.self) { symbol in
                        Text(symbol).tag(symbol)
                    }
                }
                .pickerStyle(WheelPickerStyle())
                .glassEffect(in: RoundedRectangle(cornerRadius: 30))
                .padding()
                VStack {
                    Stepper("Scale \(Int(scale))", value: $scale)
                    Toggle("Is Heavy", isOn: $isHeavy)
                    ColorPicker("Which Color", selection: $color)
                    Stepper("Percentage filled \(percentColored / 10)", value: $percentColored)
                    Picker("Select a Symbol ", selection: $renderingForm) {
                        ForEach(possibleRederingStyles, id: \.self) { style in
                            Text(style).tag(style)
                        }
                    }
                    .pickerStyle(PalettePickerStyle())
                    .onChange(of: renderingForm) {
                        switch renderingForm {
                        case "hierarchical": renderingFormAcctual = .hierarchical
                        case "monochrome": renderingFormAcctual = .monochrome
                        case "multicolor": renderingFormAcctual = .multicolor
                        case "palette": renderingFormAcctual = .palette
                        default: renderingFormAcctual = .hierarchical
                        }
                    }
                }
                .padding()
                .glassEffect(in: RoundedRectangle(cornerRadius: 30))
                VStack {
                    Text("Selected Symbol: \(selectedSymbol)")
                        .font(.title)
                        .padding()
                    
                    Image(systemName: selectedSymbol, variableValue: percentColored / 10)
                        .resizable()
                        .frame(width: 100 * (scale/2), height: 100 * (scale/2))
                        .bold(isHeavy ? true : false)
                        .foregroundStyle(color)
                        .symbolRenderingMode(renderingFormAcctual)
                        .padding()
                }
                .glassEffect(in: RoundedRectangle(cornerRadius: 30))
            }
            .animation(.spring)
            .padding()
        }
    }
}

PlaygroundPage.current.setLiveView(ContentView())

