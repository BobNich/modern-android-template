# Modern Android App Template

A Modern Android App Template with a solid foundation for building scalable and maintainable apps.

This template includes essential tools and libraries to kickstart your Android development.

## 🚀 Build Plugins & Features

- **Jetpack Compose**
- **Unit & UI Tests**
- **App Signing**
- **Gradle Secrets**
- **Hilt**
- **Room**

## 🛠️ Getting Started

1️⃣ Clone the Repository

```text
git clone https://github.com/BobNich/modern-android-template.git
```

2️⃣ Set the Package Name

To change the package name to match your project, execute the start.sh script. This will update the package name throughout the project.

First, make sure the script is executable:

```text
chmod +x start.sh
```

Then, run the script with your desired package name (e.g., com.example.app):

```text
./start.sh com.example.app
```

The script will move the files to the appropriate directories, adjust the package declarations in Kotlin files, and update the build.gradle.kts file with the new namespace.

3️⃣ Configure App Signing

To use the Gradle signing plugin, create a file named ```signing.properties``` in the root directory and add:

```text
keystore.path=<your_keystore_path>
keystore.password=<your_keystore_password>
key.alias=<your_key_alias>
key.password=<your_key_password>
```

4️⃣ Build & Run

## 📜 Contributions

Contributions and feedback are welcome! 🎉