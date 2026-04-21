import SwiftUI

#Preview {
    HomeView()
}

        
        
        struct HomeView : View {
            @State private var searchText: String = ""
            var body: some View {
                
                
                
                VStack{
                    
                    Text("Execersice DashBoard").padding(.vertical,15)
                   
                    TextField("Search", text: $searchText).padding(20).overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 2)).padding(.bottom,10)
                    HStack{
                        Text("Available Exercises").fontWeight(.bold)
                    }.frame(maxWidth: .infinity,alignment:
                        .leading).padding(.bottom,20)
                    
                    ScrollView(.horizontal,showsIndicators: false){
                        
                        HStack(spacing:15){
                            ForEach(0..<10,id: \.self){
                                index in
                                Text("Talha").frame(alignment: .leading)
                                    .padding()
                                        .background(Color.gray.opacity(0.2)) // container
                                        .cornerRadius(10)
                            }.frame(maxWidth: .infinity,alignment:
                                    .leading).padding(.bottom,20)
                            }
                        }
                      
                            
                  
                   
                    
                    
                    
                    
                  
                   
                   
                    
                    Spacer()
                    
                    
                    
                    
                    
                    
                    
                }.frame(maxWidth: .infinity, maxHeight: .infinity).padding(.horizontal,20)
               
              
                
                
                
            }
        }




