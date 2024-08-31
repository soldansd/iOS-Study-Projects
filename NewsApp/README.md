# 📰 News iOS App

This repository contains the source code for a News iOS app built with Swift and SwiftUI. The app allows users to scroll the latest news articles and view detailed information about each piece of news. The app leverages modern asynchronous programming patterns using `async/await` and integrates with the News API for real-time news content.

## 📱 Features

- **News Feed**: Users can scroll through a list of the latest news articles.
- **News Detail View**: Users can tap on any news article to view detailed information, including the full article, images, and more.

## 🛠️ Technologies

- **Swift**: The programming language used to develop the app.
- **SwiftUI**: A declarative framework for building user interfaces across Apple platforms.
- **Async/Await Task**: Used for handling asynchronous operations in a clean and readable manner.
- **URLSession**: Used for making network requests to fetch news data.
- **News API**: The API used to retrieve the latest news articles and their details.

## 📚 Project Structure

The project is organized into the following directories:

- **`View/`**: Contains SwiftUI views that define the app's user interface.
- **`ViewModel/`**: Contains view models that handle the state and business logic for the views, including fetching data from the network.
- **`Model/`**: Contains the data models representing news articles and other related entities.
- **`Helper/`**: Contains utility classes, including the `NetworkManager`, responsible for making network requests using `URLSession` and handling API responses.
- **`Extensions/`**: Contains extensions to Swift and SwiftUI classes, providing additional functionality or convenience methods.



## Installation

1. **Clone the repository:**

   ```bash
   git clone https://github.com/soldansd/iOS-Study-Projects.git
   ```

2. **Build and Run:**

   Build and run the project on a simulator or a physical device using Xcode.

## 🌐 API Integration

The app uses the News API to fetch the latest news. The `NetworkManager` handles all network requests using `URLSession`, and data fetching is managed through Swift's `async/await` pattern, providing a clean and efficient way to handle asynchronous tasks.
