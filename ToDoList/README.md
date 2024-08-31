# 📝 To-Do List iOS App

This repository contains the source code for a To-Do List iOS app built with Swift and SwiftUI. The app allows users to manage their tasks efficiently by providing features to add, delete, edit, and view tasks. The app uses `UserDefaults` for persistent storage of tasks, ensuring data is saved between app sessions.

## 📱 Features

- **Task List**: Users can view a list of their current tasks.
- **Add Task**: Users can add new tasks to their to-do list.
- **Edit Task**: Users can edit existing tasks.
- **Delete Task**: Users can delete tasks from their list when they are completed or no longer needed.

## 🛠️ Technologies

- **Swift**: The primary programming language used for the app.
- **SwiftUI**: A modern UI framework for building user interfaces across all Apple platforms.
- **UserDefaults**: Used for storing and retrieving user data locally on the device.

## 📚 Project Structure

The project is organized into the following directories:

- **`View/`**: Contains SwiftUI views that define the user interface of the app.
- **`ViewModel/`**: Contains view models that manage the state and logic for the views, including handling task data.
- **`Model/`**: Contains data models representing the task entities within the app.
- **`Components/`**: Reusable UI components, such as buttons, text fields, or task cells, that are used across multiple views.

## Installation

1. **Clone the repository:**

   ```bash
   git clone https://github.com/soldansd/iOS-Study-Projects.git
   ```

2. **Open the project:**

   Open the `.xcodeproj` file in Xcode:

   ```bash
   open ToDoList.xcodeproj
   ```

3. **Build and Run:**

   Build and run the project on a simulator or a physical device using Xcode.

## 💾 Data Persistence

The app uses `UserDefaults` for data persistence, storing all tasks locally on the device. This allows users to access their tasks even after closing and reopening the app.
