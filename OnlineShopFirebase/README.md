# 🛒 Online Shop iOS App

This repository contains the source code for an iOS online shop app built using Swift and SwiftUI. The app provides users with a seamless shopping experience, allowing them to add products to their favorites or shopping cart, and view detailed product information. The backend is powered by Firebase, leveraging Firestore for data storage and Firebase Storage for managing product images.

## 📱 Features

- **Favorite Products**: Users can mark products as favorites for easy access later.
- **Shopping Cart**: Users can add products to their shopping cart.
- **Product Detail View**: Users can view detailed information about each product, including images, descriptions, and prices.

## 🛠️ Technologies

- **Swift**: The primary programming language used for developing the app.
- **SwiftUI**: A modern framework for building user interfaces across all Apple platforms.
- **Firebase Firestore**: A NoSQL cloud database used to store product data.
- **Firebase Storage**: Used for storing and serving images of the products.

## 📚 Project Structure

The project is organized into the following directories:

- **`Views/`**: Contains SwiftUI views that define the user interface of the app.
- **`ViewModel/`**: Contains view model that manage the state and business logic for the corresponding views.
- **`Model/`**: Contains data models representing the entities within the app, such as `Product`.
- **`Components/`**: Reusable UI components that are used across multiple views, such as buttons.
- **`Extension/`**: Contains extensions to standard Swift and SwiftUI classes, adding additional functionality and convenience methods.


### Installation

1. **Clone the repository:**

   ```bash
   git clone https://github.com/soldansd/iOS-Study-Projects.git
   ```

2. **Install dependencies:**

   Ensure you have Firebase packages installed using SPM.

3. **Firebase Setup:**

   - Create a Firebase project at [Firebase Console](https://console.firebase.google.com/).
   - Download the `GoogleService-Info.plist` file from your Firebase project and add it to your Xcode project.
   - Ensure Firebase Firestore and Storage are enabled in your Firebase console.

5. **Build and Run:**

   Build and run the project on a simulator or a physical device using Xcode.
