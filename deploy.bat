@echo off
REM Flutter Web Deployment Script for GitHub Pages (Windows)

echo 🚀 Starting Flutter Web deployment to GitHub Pages...

REM Clean and get dependencies
echo 📦 Getting Flutter dependencies...
flutter pub get

REM Build for web with correct base href
echo 🏗️  Building Flutter web app...
flutter build web --base-href "/portfolio_flutter/"

REM Check if build was successful
if exist "build\web" (
    echo ✅ Build successful!
    echo 📂 Web files are in build\web directory
    echo 🌐 Your app will be available at: https://rulonajhon.github.io/portfolio_flutter/
    echo.
    echo 📋 Next steps:
    echo 1. Make sure GitHub Pages is enabled in your repository settings
    echo 2. Set source to 'GitHub Actions' in Pages settings
    echo 3. The GitHub Actions workflow will automatically deploy your app
) else (
    echo ❌ Build failed!
    pause
    exit /b 1
)

echo ✨ Deployment preparation complete!
pause
