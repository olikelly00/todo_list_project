import SwiftUI

struct TaskListView: View {
    @State var task: String = ""
    @State var tasks: [String] = [] 
    @State var taskstatus: [Bool] = []
    @State var taskindex: Int = 0
    
    
    var body: some View {
        
        ZStack {
            NavigationView {
                Form {
                    Section(header: Text("Toggle off your todos here:")) {
                        HStack {
                            TextField("Enter your task here", text: $task, axis: .vertical)
                            Toggle(isOn: $taskstatus[taskindex]){
                            }
                            Button (action: {
                                guard !task.isEmpty else {return}
                                tasks.append(task)
                                task = ""
                                
                            }) {
                                Text("Add task")
                            }
                        }
                        Section {
                            ForEach(tasks.indices, id: \.self) {index in
                                NavigationLink(destination: TaskDisplayView(task: task, taskindex: index)) {
                                    Text(tasks[index])
                                    Toggle(isOn: $taskstatus[index]) {
                                    }
                                }
                            }
                        }
                    }
                }
            }
            .padding(.horizontal, 40)
            .opacity(0.6)
            .background(
                Image("desk_flat_lay")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            )
            
        }
    }
}
