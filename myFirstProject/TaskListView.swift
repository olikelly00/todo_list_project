import SwiftUI

struct TaskListView: View {
    @State var task: String = ""
    @State var tasks: [String] = [] 
    @State var taskstatus: [Int: Bool] = [:]
    @State var taskindex: Int = 0
    
    
    var body: some View {
        
        ZStack {
            NavigationView {
                Form {
                    Section(header: Text("Toggle off your todos here:")) {
                        HStack {
                            TextField("Enter your task here", text: $task, axis: .vertical)
                            Button (action: {
                                guard !task.isEmpty else {return}
                                tasks.append(task)
                                taskstatus[tasks.count - 1] = false
                                task = ""
                                
                                
                            }) {
                                Text("Add task")
                            }
                        }
                        Section {
                            ForEach(tasks.indices, id: \.self) {index in
                                NavigationLink(destination: TaskDisplayView(task: task, taskindex: index)) {
                                    Text(tasks[index])
                                    if let status = taskstatus[index] {
                                        Toggle(isOn: Binding(
                                            get: { status },
                                            set: { taskstatus[index] = $0 }
                                         )) {}
                                    } else {
                                        Toggle(isOn: .constant(false)) {}.disabled(true)
                                                                                
                                    }
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

