import SwiftUI

struct RegisterView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Create Account")
                .font(.largeTitle).bold()

            TextField("Email", text: $email)
                .textContentType(.emailAddress)
                .keyboardType(.emailAddress)
                .padding()
                .background(Color.gray.opacity(0.2).cornerRadius(10))

            SecureField("Password", text: $password)
                .padding()
                .background(Color.gray.opacity(0.2).cornerRadius(10))

            SecureField("Confirm Password", text: $confirmPassword)
                .padding()
                .background(Color.gray.opacity(0.2).cornerRadius(10))

            Button {
                // handle registration
            } label: {
                Text("Register")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue.cornerRadius(10))
                    .foregroundColor(.white)
                    .font(.system(size: 20, weight: .semibold))
            }

            Spacer()
        }
        .padding()
        .navigationTitle("Register")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack { RegisterView() }
}
