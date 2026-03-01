# BiteSafe | Insect Identification & Safety

A Flutter application designed to identify insects from photos and provide detailed safety information, identification tips, and first-aid measures.

## 🚀 Overview

BiteSafe helps users identify insects using AI-powered image analysis (Gemini API) and provides a searchable encyclopedia of insect data. It breaks down physical characteristics, habitats, and potential risks associated with each insect.

## 🛠️ Features

* **Image Upload:** Upload images directly from your gallery to identify unknown insects.
* **AI Analysis:** Powered by Gemini AI to identify insects with high accuracy.
* **Search & Filter:** Instantly find insects by name or filter by category within the **Insect Collection**.
* **Safety Assessment:** Check if an insect is harmful to humans and its risk level.
* **First Aid Information:** Quick access to medical advice if bitten or stung.
* **Structured Information:** Detailed breakdown including scientific name, habitat, and visual markings.

## ⚙️ How It Works

1.  **Input:** User uploads an image via the app or searches for an insect by name in the library.
2.  **Processing:** If a photo is uploaded, the app sends it to the Gemini API with a specialized prompt.
3.  **Output:** Gemini returns a structured analysis, which is parsed and displayed in the app UI alongside locally stored data for known insects.


## 🛠️ Technology Stack

| Component | Technology |
| :--- | :--- |
| **Framework** | Flutter (Dart) |
| **AI/ML** | Google Gemini API (Flash/Pro) |
| **Networking** | HTTP Package |
| **Image Handling** | Image Picker |

## 🖥️ Setup & Installation

To run this project locally, follow these steps:

1.  **Clone the repository:**
    ```bash
    git clone [https://github.com/your-username/bitesafe.git](https://github.com/your-username/bitesafe.git)
    cd bitesafe
    ```

2.  **Install dependencies:**
    ```bash
    flutter pub get
    ```

3.  **Set up API Keys (Crucial for Security):**
    * Create a file named `.env` in the root directory of the project.
    * Add your Gemini API key to this file:
        ```text
        GEMINI_API_KEY=your_actual_api_key_here
        ```

4.  **Run the application:**
    ```bash
    flutter run
    ```

## 📋 Permissions & Privacy

* **Camera/Gallery:** This app requires access to your camera and gallery to upload photos.
* **Data Privacy:** Images uploaded are processed by the Gemini API for identification purposes only.

## 🛡️ License

This project is licensed under the [MIT License](LICENSE).


A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
