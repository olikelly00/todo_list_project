import SwiftUI

struct ContentView: View {
    @State var task: String = ""
    @State var tasks: [String] = []
    @State var taskstatus: Bool = false
    
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("desk_flat_lay")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                Text("Welcome to your Todo List!")
                    .font(.title)
                    .position(x: 250, y: 425)
                
                NavigationLink(destination: TaskListView()) {
                    Text("Tap here to get started...")
                        .font(.callout)
                        .position(x: 250, y: 475)
                }
            }
        }
    }
}
        
  

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

