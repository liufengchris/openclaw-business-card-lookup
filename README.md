# Business Card Lookup Skill 📇

Extract contact information from business card photos using OCR, create vCard (.vcf) files, and generate LinkedIn search URLs.

## Features

- 🔍 OCR extraction using Tesseract (no API keys needed)
- 📇 Automatic vCard (.vcf) generation
- 📤 Direct vCard attachment via Telegram/Discord
- 🔗 LinkedIn search URL generation
- 🖼️ Works with any business card photo

## Installation

1. Clone this repository into your OpenClaw skills directory:
   ```bash
   git clone https://github.com/YOUR_USERNAME/openclaw-business-card-lookup.git ~/.openclaw/skills/business-card-lookup
   ```

2. Install Tesseract OCR:
   ```bash
   # Ubuntu/Debian
   sudo apt-get install tesseract-ocr tesseract-ocr-eng

   # macOS
   brew install tesseract

   # Windows
   # Download from https://github.com/UB-Mannheim/tesseract/wiki
   ```

3. Verify OpenClaw recognizes the skill:
   ```bash
   openclaw skills list | grep business-card
   ```

## Usage

Simply send a business card photo to your OpenClaw agent. The skill will:

1. Extract text using OCR
2. Parse contact information (name, title, company, phone, email)
3. Create a vCard file
4. Send the vCard as an attachment (Telegram/Discord)
5. Provide LinkedIn search URL

## Requirements

- OpenClaw with Telegram or Discord channel configured
- Tesseract OCR installed
- No API keys required!

## How It Works

The skill uses a multi-step workflow:

1. **OCR Extraction**: Uses Tesseract with `--psm 6` for business card text extraction
2. **Contact Parsing**: Identifies name, title, company, phone, email, website from OCR text
3. **vCard Generation**: Creates standard vCard 3.0 format files
4. **File Attachment**: Uses OpenClaw CLI to send vCard as document attachment
5. **LinkedIn URL**: Generates search URLs for finding the contact on LinkedIn

## Example Output

```
✅ Business Card Extracted!

📇 vCard sent — check your Telegram for the attachment!

Contact Info:
• Name: John Doe
• Title: CEO
• Company: Acme Corp
• Phone: +1-555-123-4567
• Email: john@acme.com

🔗 LinkedIn Search:
https://www.linkedin.com/search/results/people/?keywords=John%20Doe%20Acme%20Corp
```

## Configuration

The skill automatically detects your chat ID from the inbound message context. No manual configuration needed!

## Troubleshooting

| Issue | Solution |
|-------|----------|
| OCR returns garbled text | Try sending a clearer photo with better lighting |
| vCard not sending | Check that `openclaw message send` works in your terminal |
| Missing contact fields | The skill will ask you to confirm or fill in missing info |

## Privacy

- All processing happens locally on your machine
- No data is sent to external APIs (except LinkedIn URLs for your own use)
- vCards are stored in your OpenClaw workspace only

## License

MIT License - Feel free to use and modify!

## Contributing

Pull requests welcome! Please ensure:
- Skill follows OpenClaw skill conventions
- Documentation is updated
- Test with multiple business card formats

## Author

Created by Chris Liu (liufengchris)
