import SwiftUI

struct ContentView: View {
    
    @AppStorage("isHidden1") private var isHidden1Saved = false
    @State public var isHidden1 = true {
        didSet {
            isHidden1Saved = isHidden1
        }
    }
    @AppStorage("isHidden2") private var isHidden2Saved = false
    @State public var isHidden2 = true {
        didSet {
            isHidden2Saved = isHidden2
        }
    }
    @AppStorage("isHidden3") private var isHidden3Saved = false
    @State public var isHidden3 = true {
        didSet {
            isHidden3Saved = isHidden3
        }
    }
    @AppStorage("isHidden4") private var isHidden4Saved = false
    @State public var isHidden4 = true {
        didSet {
            isHidden4Saved = isHidden4
        }
    }
    @AppStorage("isHidden5") private var isHidden5Saved = false
    @State public var isHidden5 = true {
        didSet {
            isHidden5Saved = isHidden5
        }
    }
    @AppStorage("text1") private var text1Saved = ""
    @State public var text1 = "" {
        didSet {
            text1Saved = text1
        }
    }
    @AppStorage("text2") private var text2Saved = ""
    @State public var text2 = "" {
        didSet {
            text2Saved = text2
        }
    }
    @AppStorage("text3") private var text3Saved = ""
    @State public var text3 = "" {
        didSet {
            text3Saved = text3
        }
    }
    @AppStorage("text4") private var text4Saved = ""
    @State public var text4 = "" {
        didSet {
            text4Saved = text4
        }
    }
    @AppStorage("text5") private var text5Saved = ""
    @State public var text5 = "" {
        didSet {
            text5Saved = text5
        }
    }
    @AppStorage("score") private var scoreSaved = 0
    @State public var score = 0 {
        didSet {
            scoreSaved = score
        }
    }

    init() {
        setupNavigationBarAppearance()
    }

    var body: some View {
        NavigationStack {
            ZStack {
                // Background color
                LinearGradient(
                    gradient: Gradient(colors: [Color(white: 0.3), Color.gray]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()
                
                // Main content
                VStack {
                    HStack{
                        Button(action: {
                            score += 20
                            Dcount = 1
                            isHidden1 = true
                        }) {
                            Image(systemName: "checkmark.seal")
                                .font(.title)
                        }
                        Text(text1)
                            .frame(minWidth: 235, minHeight: 50)
                            .background(Color(white: 0.2))
                        Label("+20", systemImage: "lasso.badge.sparkles")
                        
                    }.frame(minWidth: 350, minHeight: 50).font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color(white: 0.3))
                        .cornerRadius(10)
                        .padding()
                        .opacity(isHidden1 ? 0 : 1)
                    
                    HStack{
                        Button(action: {
                            score += 20
                            Dcount = 2
                            isHidden2 = true
                        }) {
                            Image(systemName: "checkmark.seal")
                                .font(.title)
                        }
                        Text(text2)
                            .frame(minWidth: 235, minHeight: 50)
                            .background(Color(white: 0.2))
                        Label("+20", systemImage: "lasso.badge.sparkles")
                        
                    }.frame(minWidth: 350, minHeight: 50).font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color(white: 0.3))
                        .cornerRadius(10)
                        .padding()
                        .opacity(isHidden2 ? 0 : 1)
                    
                    HStack{
                        Button(action: {
                            score += 20
                            Dcount = 3
                            isHidden3 = true
                        }) {
                            Image(systemName: "checkmark.seal")
                                .font(.title)
                        }
                        Text(text3)
                            .frame(minWidth: 235, minHeight: 50)
                            .background(Color(white: 0.2))
                        Label("+20", systemImage: "lasso.badge.sparkles")
                        
                    }.frame(minWidth: 350, minHeight: 50).font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color(white: 0.3))
                        .cornerRadius(10)
                        .padding()
                        .opacity(isHidden3 ? 0 : 1)
                    
                    HStack{
                        Button(action: {
                            score += 20
                            Dcount = 4
                            isHidden4 = true
                        }) {
                            Image(systemName: "checkmark.seal")
                                .font(.title)
                        }
                        Text(text4)
                            .frame(minWidth: 235, minHeight: 50)
                            .background(Color(white: 0.2))
                        Label("+20", systemImage: "lasso.badge.sparkles")
                        
                    }.frame(minWidth: 350, minHeight: 50).font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color(white: 0.3))
                        .cornerRadius(10)
                        .padding()
                        .opacity(isHidden4 ? 0 : 1)
                    
                    HStack{
                        Button(action: {
                            score += 20
                            Dcount = 5
                            isHidden5 = true
                            if isHidden1 && isHidden2 && isHidden3 && isHidden4 && isHidden5{
                                Dcount = 1
                            }
                        }) {
                            Image(systemName: "checkmark.seal")
                                .font(.title)
                        }
                        Text(text5)
                            .frame(minWidth: 235, minHeight: 50)
                            .background(Color(white: 0.2))
                        Label("+20", systemImage: "lasso.badge.sparkles")
                        
                    }.frame(minWidth: 350, minHeight: 50).font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color(white: 0.3))
                        .cornerRadius(10)
                        .padding()
                        .opacity(isHidden5 ? 0 : 1)
                    Spacer()
                }.padding(.top,70)
                
                // Top-right NavigationLink to Add View
                VStack {
                    Rectangle()
                        .frame(height: 7)
                        .foregroundColor(Color(white: 0.2))
                    HStack {
                        Label("\(score)", systemImage: "lasso.badge.sparkles").font(.largeTitle)
                        Spacer()
                        NavigationLink(destination: AddDaily(
                            isHidden1: $isHidden1,
                            isHidden2: $isHidden2,
                            isHidden3: $isHidden3,
                            isHidden4: $isHidden4,
                            isHidden5: $isHidden5,
                            text1: $text1,
                            text2: $text2,
                            text3: $text3,
                            text4: $text4,
                            text5: $text5
                        )) {
                            Image(systemName: "plus")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color(white: 0.2))
                                .cornerRadius(30)
                        }
                    }
                    .padding(.horizontal)
                    Spacer()
                }
            }
            .navigationTitle("Daily")
            .tint(Color(white: 0.2))
        }
    }
}

private func setupNavigationBarAppearance() {
    let appearance = UINavigationBarAppearance()
    appearance.configureWithOpaqueBackground()
    appearance.backgroundColor = UIColor.gray
    
    // Correctly set the back button color using tintColor for all navigation items
    appearance.backButtonAppearance.normal.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.darkGray]
    
    // Apply the appearance globally
    UINavigationBar.appearance().standardAppearance = appearance
    UINavigationBar.appearance().scrollEdgeAppearance = appearance
}
var Dcount: Int = 1
struct AddDaily: View {
    @Binding var isHidden1: Bool
    @Binding var isHidden2: Bool
    @Binding var isHidden3: Bool
    @Binding var isHidden4: Bool
    @Binding var isHidden5: Bool
    
    @Binding var text1: String
    @Binding var text2: String
    @Binding var text3: String
    @Binding var text4: String
    @Binding var text5: String
    
    
    var body: some View {
        ZStack {
            // Background color
            LinearGradient(
                gradient: Gradient(colors: [Color(white: 0.3), Color.gray]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            HStack {
                VStack{
                    switch Dcount {
                    case 1:
                        TextField("Name of challenge 1", text: $text1)
                            .frame(minHeight: 100)
                            .foregroundStyle(Color.white)
                            .background(Color(white: 0.2))
                            .font(.largeTitle)
                            .cornerRadius(10)
                            .padding()
                        Button(action: {
                            isHidden1 = false
                            if isHidden2 {
                                Dcount += 1
                            }
                        }) {
                            Image(systemName: "checkmark.seal")
                                .font(.largeTitle)
                                .foregroundStyle(Color.white)
                        }
                    case 2:
                        TextField("Name of challenge 2", text: $text2)
                            .frame(minHeight: 100)
                            .foregroundStyle(Color.white)
                            .background(Color(white: 0.2))
                            .font(.largeTitle)
                            .cornerRadius(10)
                            .padding()
                        Button(action: {
                            isHidden2 = false
                            if isHidden3 {
                                    Dcount += 1
                            }else if isHidden1 {
                                Dcount -= 1
                            }
                        }) {
                            Image(systemName: "checkmark.seal")
                                .font(.largeTitle)
                                .foregroundStyle(Color.white)
                        }
                    case 3:
                        TextField("Name of challenge 3", text: $text3)
                            .frame(minHeight: 100)
                            .foregroundStyle(Color.white)
                            .background(Color(white: 0.2))
                            .font(.largeTitle)
                            .cornerRadius(10)
                            .padding()
                        Button(action: {
                            isHidden3 = false
                            if isHidden4 {
                                Dcount += 1
                            }else if isHidden2 {
                                Dcount -= 1
                            }
                        }) {
                            Image(systemName: "checkmark.seal")
                                .font(.largeTitle)
                                .foregroundStyle(Color.white)
                        }
                    case 4:
                        TextField("Name of challenge 4", text: $text4)
                            .frame(minHeight: 100)
                            .foregroundStyle(Color.white)
                            .background(Color(white: 0.2))
                            .font(.largeTitle)
                            .cornerRadius(10)
                            .padding()
                        Button(action: {
                            isHidden4 = false
                            if isHidden5 {
                                Dcount += 1
                            }else if isHidden3 {
                                Dcount -= 1
                            }
                        }) {
                            Image(systemName: "checkmark.seal")
                                .font(.largeTitle)
                                .foregroundStyle(Color.white)
                        }
                    case 5:
                        TextField("Name of challenge 5", text: $text5)
                            .frame(minHeight: 100)
                            .foregroundStyle(Color.white)
                            .background(Color(white: 0.2))
                            .font(.largeTitle)
                            .cornerRadius(10)
                            .padding()
                        Button(action: {
                            isHidden5 = false
                            if isHidden1 && isHidden2 && isHidden3 && isHidden4 && isHidden5{
                                Dcount = 1
                            }else if isHidden4 {
                                Dcount -= 1
                            }
                            
                        }) {
                            Image(systemName: "checkmark.seal")
                                .font(.largeTitle)
                                .foregroundStyle(Color.white)
                                
                        }
                    default:
                        Text("ERROR")
                    }
                    
                }
            }
            .navigationTitle("Add Daily Challenge")
            
            VStack {
                Rectangle()
                    .frame(height: 7)
                    .foregroundColor(Color(white: 0.2))
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
