#!/bin/bash
# Business Card OCR Extractor
# Usage: ./extract-contact.sh <image-path>

IMAGE_PATH="$1"

if [ -z "$IMAGE_PATH" ]; then
    echo "Usage: $0 <image-path>"
    exit 1
fi

if [ ! -f "$IMAGE_PATH" ]; then
    echo "Error: File not found: $IMAGE_PATH"
    exit 1
fi

# Run tesseract OCR
echo "Running OCR on: $IMAGE_PATH"
OCR_TEXT=$(tesseract "$IMAGE_PATH" stdout --psm 6 2>/dev/null)

if [ -z "$OCR_TEXT" ]; then
    echo "Error: OCR failed or returned empty text"
    exit 1
fi

echo "=== EXTRACTED TEXT ==="
echo "$OCR_TEXT"
echo "======================"

# Output the raw text for parsing
echo "$OCR_TEXT"
