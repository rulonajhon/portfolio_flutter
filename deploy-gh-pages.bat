@echo off
REM GitHub Pages Deployment Script using gh-pages package

echo 🚀 Deploying Flutter Portfolio to GitHub Pages...

REM Clean and get dependencies
echo 📦 Getting Flutter dependencies...
flutter pub get

REM Build for web with GitHub Pages configuration
echo 🏗️  Building Flutter web app for GitHub Pages...
flutter build web --base-href "/portfolio_flutter/" --dart-define=FLUTTER_WEB_USE_SKIA=false

REM Check if build was successful
if exist "build\web" (
    echo ✅ Build successful!
    
    REM Deploy to gh-pages branch
    echo 🌐 Deploying to GitHub Pages...
    npx gh-pages -d build/web
    
    echo ✅ Deployment successful!
    echo 🌐 Your portfolio will be available at: https://rulonajhon.github.io/portfolio_flutter/
    echo.
    echo 📋 Make sure to:
    echo 1. Go to GitHub repository settings
    echo 2. Under Pages section, set Source to "Deploy from a branch"
    echo 3. Select "gh-pages" branch and "/ (root)" folder
    echo 4. Wait 2-5 minutes for GitHub Pages to update
) else (
    echo ❌ Build failed!
    pause
    exit /b 1
)

echo ✨ Deployment complete!
pause
