#!/bin/bash

# Script to copy images from AI-slides repository to AI-course-book
# Run this script from the AI-course-book directory

echo "Copying images from AI-slides repository..."

# Check if AI-slides directory exists as a sibling
if [ -d "../AI-slides/images" ]; then
    echo "Found AI-slides repository at ../AI-slides"
    echo "Copying images..."
    cp -r ../AI-slides/images ./
    echo "✓ Images copied successfully!"
else
    echo "AI-slides repository not found at ../AI-slides"
    echo "Please specify the path to AI-slides repository:"
    read -p "Path to AI-slides: " SLIDES_PATH
    
    if [ -d "$SLIDES_PATH/images" ]; then
        echo "Copying images from $SLIDES_PATH..."
        cp -r "$SLIDES_PATH/images" ./
        echo "✓ Images copied successfully!"
    else
        echo "❌ Error: Images directory not found at $SLIDES_PATH/images"
        echo ""
        echo "Alternative: Clone AI-slides repository first:"
        echo "  git clone https://github.com/chebil/AI-slides.git ../AI-slides"
        echo "  Then run this script again."
        exit 1
    fi
fi

echo ""
echo "Images directory structure:"
tree -L 2 images/ 2>/dev/null || ls -R images/

echo ""
echo "Next steps:"
echo "1. Add and commit the images:"
echo "   git add images/"
echo "   git commit -m 'Add course images'"
echo "   git push origin main"
echo ""
echo "2. The GitHub Action will automatically build and deploy your book!"
