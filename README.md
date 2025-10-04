# 🎬 Anime Live

A modern Flutter application for streaming and discovering anime content with premium subscription features.

## 📱 Features

- 🏠 **Home Screen** - Browse and discover anime with beautiful cards and categories
- 📖 **Details Screen** - View detailed anime information, episodes, and ratings
- 💎 **Upgrade Screen** - Premium subscription plans with Monthly and Annual options
- 🎨 **Modern UI** - Clean, intuitive interface with smooth animations
- 👨‍👩‍👧‍👦 **Family Sharing** - Share your subscription with family members

## 🎥 Demo Video

> **Note:** A detailed walkthrough video will be uploaded to explain the app's features and architecture.

![video2-ezgif com-video-to-gif-converter](https://github.com/user-attachments/assets/cea0d8e7-b0a2-4079-a705-2e73b85366ec)

## 🏗️ Project Structure

The project follows **Clean Architecture** principles with feature-based organization:

```
lib/
├── core/                    # Shared resources         
│   └── utils/              # Colors,styles,assets,spacing 
│
├── features/               # Feature modules
│   ├── home/              # Home screen feature
│   ├── details/           # Details screen feature
│   └── upgrade/           # Subscription feature
│       ├── data/          # Data layer
│       └── presentation/  # UI layer
│           ├── screens/
│           └── widgets/
│
└── main.dart              # App entry point
```

### Architecture Layers

Each feature is organized into:
- **Data Layer**: Models,
- **Presentation Layer**: Screens and feature-specific widgets

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (>=3.0.0)
- Dart SDK (>=3.0.0)
- Android Studio / VS Code

### Installation

1. Clone the repository
```bash
git clone https://github.com/ahmedyaser12/Anime_App.git
cd anime_live
```

2. Install dependencies
```bash
flutter pub get
```

3. Run the app
```bash
flutter run
```

## 📱 Screens

### 1. Home Screen
- Anime browsing grid/list
- Category filters
- Search functionality
- Featured anime section

### 2. Details Screen
- Anime cover and information
- Watch/Preview episodes

### 3. Upgrade Screen
- **Monthly Plan**: $5 USD/Month
- **Annual Plan**: $50 USD/Year
- Family sharing feature included
- Interactive plan selection

## 🛠️ Built With

- **Flutter** - UI framework
- **Dart** - Programming language
- **Clean Architecture** - Design pattern

### Build
```bash
# Android
flutter build apk

# iOS
flutter build ios
```

## 📞 Contact

- GitHub: [@ahmedyaser12](https://github.com/ahmedyaser12)
- Email: ahmedyaserramadan456@gmail.com

**Made with ❤️ using Flutter**
