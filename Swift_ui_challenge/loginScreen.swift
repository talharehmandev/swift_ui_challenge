import SwiftUI

struct LoginView: View {
    @State private var emailaddress: String = ""
    @State private var password: String = ""
    @FocusState private var isEmailFocused: Bool
    
    var body: some View {
        
        ZStack{

            
            LinearGradient(
                gradient: Gradient(colors: [Color.blue,Color.pink]),
                startPoint: .top,
                endPoint: .bottom
            ).ignoresSafeArea()
            
            VStack(alignment : .center,spacing: 3){
                Text("Welcome Back")
                    .font(.system(size: 30))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Text("Login to proceed next to enjoye the App")
                    .foregroundColor(.white).padding(.bottom,30)
            
                
                
                TextField("Enter your email", text: $emailaddress)
                    .padding()
                    .foregroundColor(.white)
                    .tint(.white)
                    .background(Color.white.opacity(0.15))
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(isEmailFocused ? Color.white : Color.white.opacity(0.4), lineWidth: 2)
                    )
                    .cornerRadius(12)
                    .focused($isEmailFocused)
                    .padding(.bottom, 12)
                
                SecureField("Enter your password", text: $password)
                    .padding()
                    .foregroundColor(.white)
                    .tint(.white)
                    .background(Color.white.opacity(0.15))
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.white.opacity(0.4), lineWidth: 2)
                    )
                    .cornerRadius(12)
                    .padding(.bottom, 30)
                
                Button(action: {
                    print("Email:", emailaddress)
                    print("Password:", password)
                }) {
                    Text("Login")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(
                            LinearGradient(
                                gradient: Gradient(colors: [Color.white.opacity(0.3), Color.white.opacity(0.1)]),
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(Color.white.opacity(0.5), lineWidth: 1)
                        )
                        .cornerRadius(12)
                        .shadow(color: Color.black.opacity(0.2), radius: 6, x: 0, y: 4)
                        .padding(.horizontal, 30)
                }
                
            }.frame(maxHeight: .infinity,alignment: .top).padding(20)
        }
        
    }
}

#Preview {
    LoginView()
}
