# Business Card Lookup Skill 📇

**Turn business card photos into contacts instantly!**

Extract contact info from business card photos using OCR, create vCard files you can save to contacts, and generate LinkedIn search URLs.

## ✨ Features

- 📸 **OCR Extraction** - Reads text from business card photos
- 📇 **vCard Generation** - Creates .vcf files for your contacts app
- 🔗 **LinkedIn Search** - Generates search URLs to find profiles
- 🆓 **No API Keys** - Uses built-in Tesseract OCR
- 📱 **Mobile Friendly** - Works on any device

## 🚀 Quick Start

**Just send a business card photo!**

Example flow:
```
You: [sends business card photo]

Skill: ✅ Business Card Extracted!
       
       Contact Info:
       • Name: John Doe
       • Title: CEO at Acme Corp
       • Phone: +1-555-123-4567
       • Email: john@acme.com
       
       📇 vCard attached - tap to save!
       
       🔗 LinkedIn:
       linkedin.com/search/results/people/?keywords=John%20Doe%20Acme%20Corp
```

## 📦 What You Get

1. **vCard Attachment** (.vcf file)
   - Tap to save directly to phone contacts
   - Works on iOS, Android, desktop

2. **LinkedIn Search URL**
   - Click to see search results
   - Find the right profile among matches

3. **Contact Summary**
   - All extracted info in readable format
   - Easy to verify accuracy

## 🛠️ Requirements

- ✅ Tesseract OCR (usually pre-installed)
- ✅ OpenClaw workspace
- ❌ No API keys needed!
- ❌ No browser extension needed!

## 📁 Files

```
business-card-lookup/
├── SKILL.md           # Skill documentation
├── README.md          # This file
├── extract-contact.sh # OCR extraction script
├── generate-vcard.sh  # vCard generator script
└── contacts/          # Generated vCards stored here
```

## 🎯 Use Cases

- **Networking events** - Scan cards on the spot
- **Sales leads** - Build contact list from cards
- **Conference follow-ups** - Process stack of cards
- **Personal contacts** - Save contacts from meetings
- **Team sharing** - Share contact vCards with colleagues

## 💡 Tips

- **Good photos** = Better OCR (good lighting, flat surface)
- **Verify** important contacts (phone, email)
- **LinkedIn search** shows all matches (not just first result)
- **vCards** work across all platforms (iOS, Android, Outlook, etc.)

## 🌍 Share This Skill

Want others to use this? Share it!

- **OpenClaw Hub**: https://clawhub.com
- **GitHub**: Publish as public repo
- **Discord**: OpenClaw Community Server
- **Direct share**: Copy the skill folder

## 📝 Version

**v2.0** - Simplified (removed browser automation, 100% reliable URLs)

## 🙋 Support

Issues or questions? Check:
- OpenClaw Docs: https://docs.openclaw.ai
- Community Discord: https://discord.com/invite/clawd
- Skill Hub: https://clawhub.com

---

**Built with ❤️ for OpenClaw**
