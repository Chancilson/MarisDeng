# Flutter Login Page with Animated Video Background

A professional and visually stunning Flutter login page template featuring an animated video background. This template provides a modern authentication interface with smooth video playback, responsive design, and ready-to-use UI components.

![Flutter](https://img.shields.io/badge/Flutter-3.19+-blue.svg)
![Dart](https://img.shields.io/badge/Dart-3.0+-blue.svg)
![License](https://img.shields.io/badge/License-MIT-green.svg)
![Platform](https://img.shields.io/badge/Platform-iOS%20%7C%20Android%20%7C%20Web-lightgrey.svg)

## ✨ Features

- 🎬 **Animated Video Background** - Seamless looping video with aspect ratio 9:16
- 📱 **Responsive Design** - Adapts to all screen sizes
- 🎨 **Modern UI Components** - Customizable widgets for rapid development
- 🔧 **State Management** - Built with GetX for efficient state handling
- ⚡ **Performance Optimized** - Smooth video playback without lag
- 🎯 **Easy to Customize** - Modular architecture for easy modifications
- 🔄 **Video Player Integration** - Native Flutter video_player for reliable performance

## 🚀 Quick Start

### Prerequisites

- Flutter SDK 3.19.0 or higher
- Dart 3.0.0 or higher
- Android Studio/VSCode with Flutter extension

### Installation

1. **Clone the repository**
```bash
git clone https://github.com/Chancilson/flutter-login-video-background.git
cd flutter-login-video-background
```

2. **Install dependencies**
```bash
flutter pub get
```

3. **Add your video asset**
   - Place your video file in `assets/video/welcome_flash_bg.mp4`
   - Update the video path in `login_controller.dart` if needed

4. **Update pubspec.yaml**
```yaml
flutter:
  assets:
    - assets/video/welcome_flash_bg.mp4
    - assets/images/ic_logo.png
    - assets/images/welcome_bg_transition.png
    - assets/svg/ic_google_logo.svg
    - assets/svg/ic_phone_login.svg
```

5. **Run the application**
```bash
flutter run
```

## 🏗️ Project Structure

```
lib/
├── controllers/
│   └── login_controller.dart     # Video controller with GetX
├── widgets/
│   ├── welcome_video_background.dart  # Video background widget
│   ├── container_with_corner.dart     # Custom container widget
│   └── text_with_tap.dart             # Custom text widget with tap
├── login_page.dart                    # Main login page UI
└── main.dart                          # App entry point
```

## 🔧 Customization

### 1. Change Video Background
Replace the video file in `assets/video/welcome_flash_bg.mp4` with your own MP4 file.

### 2. Modify Colors
Edit the color schemes in `login_page.dart`:
```dart
color: Colors.white,  // Button color
color: Colors.blueAccent,  // Text color
```

### 3. Add More Login Methods
Extend the `_buildMoreMethods` widget in `login_page.dart`:
```dart
_buildSocialButton(String iconPath, VoidCallback onTap) {
  return GestureDetector(
    onTap: onTap,
    child: ContainerCorner(
      color: Colors.white,
      height: 40,
      width: 40,
      borderRadius: 50,
      child: SvgPicture.asset(iconPath),
    ),
  );
}
```

### 4. Adjust Video Aspect Ratio
Modify the aspect ratio in `login_controller.dart`:
```dart
final RxDouble videoAspectRatio = (9/16).obs; // Change to desired ratio
```

## 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  get: ^4.6.5           # State management & navigation
  video_player: ^2.8.2  # Video playback
  flutter_svg: ^2.0.9   # SVG image support
  google_fonts: ^6.1.0  # Custom fonts
  flutter_linkify: ^7.0.2 # Link detection in text
  url_launcher: ^6.1.15 # URL launching
```

## 🎨 UI Components

### ContainerWithCorner
A highly customizable container widget with:
- Rounded corners (individually configurable)
- Gradient backgrounds
- Box shadows
- Image decorations
- Border customization

### TextWithTap
An enhanced text widget featuring:
- Tap functionality
- URL detection & launching
- Selectable text option
- Custom fonts with Google Fonts
- Rich text formatting

### WelcomeVideoBackground
The video background component:
- Auto-plays on initialization
- Maintains aspect ratio
- Handles video state
- Smooth transitions

## 🛠️ Advanced Usage

### Video Controller Methods
```dart
// Pause video
controller.pauseVideo();

// Resume video  
controller.resumeVideo();

// Check video status
controller.isVideoPlaying;
controller.isVideoReady;
```

### Custom Video Loading
Extend the `LoginController` to add custom video loading logic:
```dart
Future<void> loadCustomVideo(String path) async {
  _videoController = VideoPlayerController.network(path);
  await _videoController.initialize();
  _isVideoReady.value = true;
  await _videoController.play();
}
```

## 📱 Platform Support

| Platform | Status | Notes |
|----------|--------|-------|
| Android  | ✅ Full Support | Optimized for all API levels |
| iOS      | ✅ Full Support | Tested on iOS 15+ |
| Web      | ✅ Full Support | Responsive design included |
| Desktop  | ⚠️ Experimental | May require additional setup |

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👨‍💻 Author

**Chancilson José**

- 💼 Senior Flutter Developer & UI/UX Designer
- 🎨 Creating beautiful and functional mobile applications
- 📚 Sharing knowledge through open-source projects

### Connect with Me

[![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/Chancilson)
[![Facebook](https://img.shields.io/badge/Facebook-1877F2?style=for-the-badge&logo=facebook&logoColor=white)](https://www.facebook.com/chancilsom.jose/)
[![Instagram](https://img.shields.io/badge/Instagram-E4405F?style=for-the-badge&logo=instagram&logoColor=white)](https://www.instagram.com/chancilson/)
[![TikTok](https://img.shields.io/badge/TikTok-000000?style=for-the-badge&logo=tiktok&logoColor=white)](https://www.tiktok.com/@chancilson)
[![YouTube](https://img.shields.io/badge/YouTube-FF0000?style=for-the-badge&logo=youtube&logoColor=white)](https://www.youtube.com/@Chancilson)
[![Envato](https://img.shields.io/badge/Envato-81B441?style=for-the-badge&logo=envato&logoColor=white)](https://codecanyon.net/user/matula_alberto)

## ⭐ Support

If you find this project helpful, please consider:

1. **Starring** the repository ⭐
2. **Following** me on social media for more updates
3. **Sharing** with your developer friends
4. **Checking out** my other projects on GitHub

Your support helps me create more high-quality Flutter content and templates!

---

**Built with ❤️ using Flutter**

*"Good code is its own best documentation."* - Steve McConnell
