#!/bin/bash

# Flutter Web Deployment Script for GitHub Pages
echo "🚀 Starting Flutter Web deployment to GitHub Pages..."

# Clean and get dependencies
echo "📦 Getting Flutter dependencies..."
flutter pub get

# Build for web with correct base href
echo "🏗️  Building Flutter web app..."
flutter build web --base-href "/portfolio_flutter/"

# Check if build was successful
if [ -d "build/web" ]; then
    echo "✅ Build successful!"
    echo "📂 Web files are in build/web directory"
    echo "🌐 Your app will be available at: https://rulonajhon.github.io/portfolio_flutter/"
    echo ""
    echo "📋 Next steps:"
    echo "1. Make sure GitHub Pages is enabled in your repository settings"
    echo "2. Set source to 'GitHub Actions' in Pages settings"
    echo "3. The GitHub Actions workflow will automatically deploy your app"
else
    echo "❌ Build failed!"
    exit 1
fi

echo "✨ Deployment preparation complete!"
