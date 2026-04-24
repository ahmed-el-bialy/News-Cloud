<div align="center">

# 📰 News Cloud

[![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
[![License](https://img.shields.io/badge/License-MIT-green.svg?style=for-the-badge)](LICENSE)
[![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS-blue.svg?style=for-the-badge)](https://flutter.dev)

**A modern, fast, and intuitive news aggregator app delivering real-time headlines across multiple categories with a sleek, responsive UI.**

[📱 Demo Video](#-demo-video) • [✨ Features](#-features) • [📸 Screenshots](#-screenshots) • [🏗️ Architecture](#-architecture) • [🚀 Getting Started](#-getting-started) • [👤 Author](#-author)

</div>

---

## 📱 Demo Video

<div align="center">

### 🎬 Watch News Cloud in Action

**[🔗 Watch on YouTube Shorts](https://youtube.com/shorts/AKbiBjCRIis)**

*A quick showcase of browsing categories, reading headlines, and opening full articles.*

</div>

---

## 🎯 Overview

**News Cloud** is a modern Flutter news application that aggregates real-time headlines from [NewsData.io](https://newsdata.io/). It features a clean, category-driven interface with smooth navigation, cached images, and an integrated web reader — built as a portfolio project demonstrating production-ready mobile development practices.

### 💡 Key Highlights
- 📰 **Multi-Category News** — General, Technology, Sports, Business, Entertainment
- ⚡ **Fast Loading** — Cached images with `CachedNetworkImage` for smooth scrolling
- 🌐 **In-App Reader** — Full articles open in integrated WebView without leaving the app
- 🎨 **Category-Themed UI** — Each category has its own distinct AppBar color
- 📱 **Responsive Design** — Sliver-based layouts with `CustomScrollView` for all screen sizes
- 🛡️ **Error Resilience** — Graceful handling of missing images, empty responses, and network errors

---

## ✨ Features

### 📰 Core Features
- **Breaking News Feed** — Top headlines from Egypt, Iran, Palestine, Israel, Saudi Arabia
- **Category Browsing** — Horizontal scrollable category cards with image backgrounds
- **Dedicated Category Views** — Separate screens for General, Tech, Sports, Business, Entertainment
- **Article Previews** — Headline, description, and thumbnail in elegant card layout
- **Full Article WebView** — Read complete articles in-app with `webview_flutter`
- **Smart Image Handling** — Placeholder loaders, error fallbacks, and smooth caching
- **Empty State Handling** — Friendly message when no news is available

### ⚙️ Technical Features
- **REST API Integration** — Real-time data from NewsData.io with Dio HTTP client
- **Image Caching** — `CachedNetworkImage` for optimal performance and offline image viewing
- **Sliver Architecture** — `CustomScrollView` with `SliverList`, `SliverToBoxAdapter` for smooth scrolling
- **WebView Integration** — Full browser experience within the app
- **Defensive Parsing** — Null-safe JSON parsing with fallback values
- **Responsive Cards** — `FittedBox` and `Flexible` widgets for adaptive layouts

---

## 📸 Screenshots

<div align="center">

| 🏠 Main View | 📰 Main View (Scroll) | 🎯 Categories |
|:-----------:|:---------------------:|:-------------:|
| <img src="screenshots/MainView.png" width="200"> | <img src="screenshots/MainViewP2.png" width="200"> | <img src="screenshots/MainViewP3.png" width="200"> |
| Breaking news feed | Scroll through headlines | Category selection |

| 💼 Business | 🎬 Entertainment | 🌍 General |
|:-----------:|:----------------:|:----------:|
| <img src="screenshots/BussinesView.png" width="200"> | <img src="screenshots/enterView.png" width="200"> | <img src="screenshots/GeneralView.png" width="200"> |
| Business headlines | Entertainment news | General & world news |

| ⚽ Sports | 💻 Technology | 🌐 Article Reader |
|:----------:|:-----------:|:-----------------:|
| <img src="screenshots/SportViews.png" width="200"> | <img src="screenshots/TechView.png" width="200"> | <img src="screenshots/WebView.png" width="200"> |
| Sports updates | Tech news | In-app WebView |

</div>

---

## 🛠️ Technical Stack

<div align="center">

| Component         | Technology        | Purpose                        |
|:-----------------:|:----------------:|:------------------------------:|
| **Framework**     | Flutter 3.x      | Cross-platform UI              |
| **Language**      | Dart 3.x         | Core development               |
| **HTTP Client**   | Dio ^5.x         | News API calls                 |
| **Image Caching** | cached_network_image ^3.x | Fast image loading & caching |
| **WebView**       | webview_flutter ^4.x | In-app article reading     |
| **State Mgmt**    | setState / FutureBuilder | UI state handling          |
| **API**           | NewsData.io      | Real-time news data            |
| **Design**        | Material 3       | Latest UI patterns             |

</div>

---

## 🏗️ Architecture

### 📁 Project Structure

```
lib/
├── main.dart                          # App entry point
│
├── Models/                            # 📊 Data Models
│   ├── News_Model.dart                # News article data structure
│   └── Category_Model.dart            # Category card data (image, name, page)
│
├── Services/                          # 🔌 API Service Layer
│   └── News_Services.dart             # Dio calls to NewsData.io
│
├── Views/                             # 🎬 UI Screens
│   ├── Main_View.dart                 # Home screen with categories + breaking news
│   ├── General_News_View.dart         # General news category
│   ├── Tech_News_View.dart            # Technology news category
│   ├── Sport_News_View.dart           # Sports news category
│   ├── Business_News_View.dart        # Business news category
│   ├── Entertainment_News_View.dart   # Entertainment news category
│   └── News_Web_View.dart             # WebView for full article reading
│
├── Widgets/                           # 🧩 Reusable UI Components
│   ├── Categories_Builder_Widget.dart # Horizontal category cards list
│   ├── Category_Card_Widget.dart      # Individual category card
│   ├── Category_NewsList_Builder.dart # FutureBuilder for category news
│   ├── News_List_Builder.dart         # FutureBuilder for top/breaking news
│   ├── News_List_Widget.dart          # SliverList wrapper for news cards
│   ├── News_Card_Widget.dart          # Individual news article card
│   └── Title_Widget.dart              # "Breaking News" header
│
└── assets/                            # 🖼️ Static Assets
    ├── general.avif                   # General category background
    ├── technology.jpeg                # Technology category background
    ├── entertainment.avif/.webp       # Entertainment category background
    ├── business.avif                  # Business category background
    └── sports.avif                    # Sports category background
```

### 🔄 Data Flow

```
┌─────────────┐     ┌─────────────┐     ┌─────────────┐     ┌─────────────┐
│   Views     │────▶│  Services   │────▶│    Dio      │────▶│ NewsData.io │
│  (Widgets)  │◀────│ (API Call)  │◀────│   (HTTP)    │◀────│    API      │
└─────────────┘     └─────────────┘     └─────────────┘     └─────────────┘
      │
      ▼
┌─────────────┐
│   Models    │
│ (fromJson)  │
└─────────────┘
```

---

## 🌐 API Integration

**Base URL:** `https://newsdata.io/api/1`

| Endpoint | Method | Service Method | Response |
|:---------|:------:|:---------------|:---------|
| `/latest` | `GET` | `getTopNews()` | `List<NewsModel>` |
| `/latest` | `GET` | `getCategoryNews()` | `List<NewsModel>` |

**Parameters:**
- `apikey` — API key (required)
- `country` — Filter by country codes (eg, sa, gb, etc.)
- `language` — Article language (ar, en)
- `category` — News category (business, sports, technology, entertainment, etc.)

**HTTP Client:** Dio with error handling and fallback empty lists.

**Example Response:**
```json
{
  "results": [
    {
      "title": "Breaking: Major Tech Announcement",
      "description": "A leading tech company unveiled its latest innovation...",
      "link": "https://example.com/article",
      "image_url": "https://example.com/image.jpg",
      "category": ["technology"],
      "country": ["eg"],
      "language": "ar"
    }
  ]
}
```

---

## 🧩 Data Models

### NewsModel
```dart
class NewsModel {
  String? imageUrl;      // Article thumbnail URL (nullable)
  String headLine;       // Article title
  String? subHeadLine;   // Article description (nullable)
  String newsUrl;        // Full article link

  NewsModel({
    required this.imageUrl,
    required this.headLine,
    required this.subHeadLine,
    required this.newsUrl,
  });

  factory NewsModel.fromJson(jsonData) => NewsModel(
    imageUrl: jsonData['image_url'] ?? fallbackImageUrl,
    headLine: jsonData['title'] ?? "Without Title",
    subHeadLine: jsonData['description'] ?? "Description doesn't exist",
    newsUrl: jsonData["link"] ?? fallbackUrl,
  );
}
```

### CategoryModel
```dart
class CategoryModel {
  String imagePath;      // Local asset path for category background
  String categoryName;   // Display name (General, Technology, etc.)
  Widget page;           // Target screen widget

  CategoryModel({
    required this.imagePath,
    required this.categoryName,
    required this.page,
  });
}
```

---

## 🎨 Category Color System

Each category has a distinct AppBar color for instant visual recognition:

| Category | Color | Hex Code |
|:---------|:-----:|:--------:|
| **General** | Blue | `#1976D2` |
| **Technology** | Deep Purple | `#311B92` |
| **Sports** | Green | `#2E7D32` |
| **Business** | Dark Blue Grey | `#263238` |
| **Entertainment** | Pink | `#D81B60` |

---

## 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  dio: ^5.x.x                    # HTTP client for API calls
  cached_network_image: ^3.x.x   # Image caching and loading
  webview_flutter: ^4.x.x        # In-app browser for articles
```

```bash
flutter pub get
```

---

## 🚀 Getting Started

### 📋 Prerequisites

| Requirement   | Version   | Purpose           |
|:-------------:|:---------:|:-----------------:|
| Flutter SDK   | >=3.0.0   | Framework         |
| Dart SDK      | >=3.0.0   | Language          |
| NewsData.io   | Free key  | News API          |

### 💻 Installation

```bash
# 1. Clone the repository
git clone https://github.com/ahmed-el-bialy/news_cloud.git
cd news_cloud

# 2. Install dependencies
flutter pub get

# 3. Set your NewsData.io API key in lib/Services/News_Services.dart
#    final String apiKey = "YOUR_API_KEY_HERE";

# 4. Run the app
flutter run

# Build for production
flutter build apk --release      # Android
flutter build ios --release      # iOS
```

---

## ⚠️ Known Limitations

| Issue                  | Details                              | Status             |
|:-----------------------|:-------------------------------------|:------------------:|
| API key in source code | Hardcoded in News_Services.dart      | 🔧 Planned fix     |
| No offline mode        | Requires active internet connection  | 🔧 Planned         |
| No bookmarks/saved     | Cannot save articles for later       | 🔧 Planned         |
| No search              | Cannot search for specific topics    | 🔧 Planned         |
| No push notifications  | No breaking news alerts              | 🔧 Planned         |
| No dark mode           | Light theme only                     | 🔧 Planned         |

---

## 🔮 Roadmap

- [ ] Secure API key management (environment variables / Firebase Remote Config)
- [ ] Article bookmarks with local persistence (Hive / SharedPreferences)
- [ ] Full-text search across all categories
- [ ] Push notifications for breaking news
- [ ] Dark mode support
- [ ] Multi-language UI (Arabic, English)
- [ ] Infinite scroll / pagination
- [ ] Share articles to social media
- [ ] Unit & widget tests
- [ ] CI/CD with GitHub Actions

---

## 🤝 Contributing

Contributions are welcome!

1. **Fork** the repository
2. **Create** a feature branch: `git checkout -b feature/your-feature`
3. **Commit** your changes: `git commit -m 'feat: Add awesome feature'`
4. **Push** to the branch: `git push origin feature/your-feature`
5. **Open** a Pull Request

---

## 📄 License

This project is licensed under the **MIT License** — see the [LICENSE](LICENSE) file for details.

---

## 👤 Author

**Ahmed El-Bialy**  
*Flutter Developer | Mobile App Specialist*

<div align="center">

[![LinkedIn](https://img.shields.io/badge/LinkedIn-%230077B5.svg?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/ahmedel-bialy/)
[![Email](https://img.shields.io/badge/Email-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:ah.elbialy.dev@gmail.com)
[![Phone](https://img.shields.io/badge/Phone-%2B201022121573-brightgreen?style=for-the-badge)](tel:+201022121573)
[![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/ahmed-el-bialy)

</div>

📧 **Email:** ah.elbialy.dev@gmail.com  
📞 **Phone:** +20 102 212 1573

---

<div align="center">

### ⭐ Star this repo if you found it helpful!

**Built with ❤️ by Ahmed El-Bialy**

</div>
