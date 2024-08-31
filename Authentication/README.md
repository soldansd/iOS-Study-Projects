# Authentication iOS App 📱🔐

This sample iOS application demonstrates how to implement user authentication and data management using Firebase Authentication and Firestore Database. The app provides functionalities for user registration and login.

## Features 🌟

- **User Registration and Login**: Allows users to sign up, log in, and manage their accounts using Firebase Authentication.
- **Firestore Database Integration**: Stores and retrieves user data using Firestore, Firebase’s NoSQL cloud database.

## Firebase Setup 🔧

1. **Create a Firebase Project**:
   - Go to the [Firebase Console](https://console.firebase.google.com/) and create a new project.
   - Add an iOS app to the Firebase project and follow the instructions to download the `GoogleService-Info.plist` file.

2. **Add `GoogleService-Info.plist`**:
   - Download the `GoogleService-Info.plist` from your Firebase project settings.
   - Drag and drop the `GoogleService-Info.plist` file into your Xcode project, ensuring it’s added to all targets.

3. **Enable Firebase Authentication**:
   - In the Firebase Console, navigate to **Authentication** > **Sign-in method**.
   - Enable **Email/Password** sign-in and any additional authentication providers you wish to use.

4. **Set Up Firestore Database**:
   - In the Firebase Console, go to **Firestore Database**.
   - Click **Create Database**, choose the mode (start in test mode for development), and set up Firestore.

## Installation ⚙️

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/soldansd/iOS-Study-Projects.git
   ```
2. **Set up Firebase**

3. **Build and Run**:


## Usage 🚀

1. **Registration**: Create a new account by providing an email and password.
2. **Login**: Log in using your registered credentials.
3. **User Data**: Once logged in, perform operations on user-specific data stored in Firestore.
