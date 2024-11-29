**Match Details Flutter Application**

**Overview**
This Flutter application is a detailed implementation of a Match Details screen, developed as part of an assessment to showcase UI implementation, state management, and dynamic data handling skills. The project focuses on creating a pixel-perfect representation of a sports match details page with various interactive components.

Project Structure
The application follows an MVC (Model-View-Controller) design pattern, emphasizing clean, modular, and reusable code. Custom widget components have been created to enhance code organization and maintainability.

**Dependencies**

### Responsiveness
- `flutter_screenutil`: Ensures responsive design across different device screen sizes

### State Management
- `flutter_riverpod: ^2.5.1`: Manages application state efficiently

### Local Storage
- `shared_preferences: ^2.3.2`: Handles local data persistence

### Code Generation
- `riverpod_generator`
- `build_runner`: Assist in code generation and type-safe routing

### Charting
- `fl_chart`: Used for creating the match momentum graph

### Backend Connectivity
- `dio: ^5.7.0`: HTTP client for API calls
- `dio_cookie_manager`
- `cookie_jar`

### Network Image Handling
- `cached_network_image`: Efficiently manages network images

## External Resources
- Webhook.site: Used for converting sample JSON data to a fake API

**Development Challenges**

UI Implementation
- Navigating complex UI components for the first time
- Researched and leveraged AI and platforms like pub.dev for solutions

Data Handling
- Encountered difficulties in parsing match JSON data
- Challenges with structuring and accessing event data indexes
- Ongoing efforts to improve data parsing and display

Current Status
The project is a work in progress. While not all requirements have been fully implemented, continuous improvements are planned.

Future Improvements
- Complete implementation of all assessment requirements
- Refine data parsing mechanisms
- Enhance error handling and data management

## Running the Application

**Prerequisites**
- Flutter SDK
- Dart SDK
- Compatible development environment (Android Studio, VS Code)

**Setup Steps**
1. Clone the repository
2. Run `flutter pub get` to install dependencies
3. Run `flutter pub run build_runner build` for code generation
4. Launch the application using `flutter run`

**Acknowledgments**
Grateful for the challenging assessment that pushed the boundaries of my Flutter development knowledge.

