import SwiftUI

struct TaskDisplayView: View {
    @State var tasknotes: [String] = []
    @State var tasknote: String = ""
    var task: String
    var taskindex : Int
    var body: some View {
        VStack{
            //Text("Here's your task: \(task)")
            Form {
                Section(header: Text("Add some notes for your task?:")) {
                    TextField("Add your notes here", text: $tasknote, axis: .vertical)
                    Button (action: {
                        guard !tasknote.isEmpty else {return}
                        tasknotes.append(tasknote)
                        tasknote = ""
                        
                    }) {
                        Text("Add note")
                    }
                    
                }
                Section {
                    ForEach(tasknotes, id: \.self) {note in
                        Text(note)
                        }
                    }
                }
                .navigationTitle("Your task: \(task)")
            }
        }
    }

    

