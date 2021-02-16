
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    // MARK: Nightly Tasks
                    Group {
                        HStack {
                            Text(Image(systemName: "moon.stars"))
                                .foregroundColor(.yellow)
                                .font(.title3)
                                .fontWeight(.heavy)
                            Text("Nightly Tasks")
                                .font(.title3)
                                .fontWeight(.heavy)
                                .foregroundColor(.yellow)
                                .textCase(.uppercase)
                        }
                        Text("- Check all windows")
                        Text("- Check all doors")
                        Text("- Check that the safe is locked")
                        Text("- Check the mailbox")
                        Text("- Inspect security cameras")
                        Text("- Clear ice from sidewalks")
                        Text("- Document \"strange and unusual\" occurrences")
                    }
                    
                    // MARK: Weekly Tasks
                    Group {
                        Divider()
                        HStack {
                            Text(Image(systemName: "sunset"))
                                .foregroundColor(.yellow)
                                .font(.title3)
                                .fontWeight(.heavy)
                            Text("Weekly Tasks")
                                .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                                .fontWeight(.heavy)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.yellow/*@END_MENU_TOKEN@*/)
                                .padding(.top)
                                .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                        }
                        
                        Text("- Check inside all vacant rooms")
                        Text("- Walk the perimeter of property")
                    }
                    // MARK: Monthly Tasks
                    Group {
                        Divider()
                        HStack {
                            Text(Image(systemName: "calendar"))
                                .foregroundColor(.yellow)
                                .font(.title3)
                                .fontWeight(.heavy)
                            Text("Monthly Tasks")
                                .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                                .fontWeight(.heavy)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.yellow/*@END_MENU_TOKEN@*/)
                                .padding(.top)
                                .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                        }
                        Text("- Test security alarm")
                        Text("- Test motion detectors")
                        Text("- Test smoke alarms")
                    }
                }
                .foregroundColor(/*@START_MENU_TOKEN@*/.gray/*@END_MENU_TOKEN@*/)
                Spacer()
            }
            .padding([.top, .leading])
            
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
