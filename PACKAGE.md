# 📦 How to Share This Skill

Want to share the Business Card Lookup skill with others? Here's how!

## Option 1: OpenClaw Hub (Recommended) 🌟

**Best for:** Official skill distribution

1. Go to **https://clawhub.com**
2. Create account / login
3. Click "Submit Skill"
4. Upload these files:
   - `SKILL.md` (required)
   - `README.md`
   - `extract-contact.sh`
   - `generate-vcard.sh`
   - `PACKAGE.md` (this file)
5. Add tags: `ocr`, `business-card`, `contacts`, `vcard`, `linkedin`
6. Submit for review!

**Benefits:**
- ✅ Listed in official skill directory
- ✅ Easy install for users
- ✅ Version tracking
- ✅ Community ratings

---

## Option 2: GitHub Repository

**Best for:** Open source sharing, version control

1. Create new repo: `openclaw-business-card-lookup`
2. Upload skill folder contents
3. Add `LICENSE` (MIT recommended)
4. Add `.gitignore`:
   ```
   contacts/
   *.vcf
   ```
5. Write good `README.md` (already done!)
6. Share the repo link!

**Example repo structure:**
```
openclaw-business-card-lookup/
├── SKILL.md
├── README.md
├── PACKAGE.md
├── extract-contact.sh
├── generate-vcard.sh
├── LICENSE
└── .gitignore
```

**Share on:**
- GitHub
- Twitter/X
- LinkedIn
- OpenClaw Discord

---

## Option 3: OpenClaw Discord Community 💬

**Best for:** Quick sharing, feedback

1. Join: **https://discord.com/invite/clawd**
2. Go to `#skills-showcase` channel
3. Post:
   ```
   📇 New Skill: Business Card Lookup!
   
   Extract contacts from business card photos → vCard + LinkedIn search
   
   Features:
   ✅ OCR extraction (no API keys)
   ✅ vCard generation
   ✅ LinkedIn search URLs
   ✅ 100% reliable
   
   Files: [attach skill folder]
   
   Try it out and let me know what you think!
   ```

---

## Option 4: Direct File Share

**Best for:** Sharing with specific people

1. Zip the skill folder:
   ```bash
   cd /home/chris/.openclaw/workspace/skills/
   zip -r business-card-lookup.zip business-card-lookup/
   ```
2. Send the `.zip` file via:
   - Email
   - WhatsApp/Telegram
   - Google Drive/Dropbox
   - USB drive

3. Recipient installs by:
   - Unzipping to their `skills/` folder
   - Restarting OpenClaw (if needed)

---

## Option 5: Blog Post / Tutorial

**Best for:** Reaching wider audience

Write about:
- The problem (manual contact entry)
- Your solution (this skill)
- How it works (OCR → vCard → LinkedIn)
- Installation steps
- Example usage

**Publish on:**
- Medium
- Dev.to
- LinkedIn Articles
- Personal blog
- Hacker News

---

## 📋 Skill Metadata (for submissions)

When submitting, use this info:

```yaml
name: business-card-lookup
version: 2.0
description: Extract contact info from business card photos using OCR, create vCard files, and generate LinkedIn search URLs
author: Chris Liu
tags:
  - ocr
  - business-card
  - contacts
  - vcard
  - linkedin
  - networking
  - productivity
requirements:
  - tesseract
  - openclaw-workspace
license: MIT
```

---

## 🎯 Pitch Templates

**Short pitch (Twitter/X):**
```
📇 Just built an OpenClaw skill that turns business card photos into contacts!

✅ OCR extraction
✅ vCard files
✅ LinkedIn search URLs
✅ No API keys needed

Try it: [link]

#OpenClaw #OCR #Productivity
```

**Medium pitch (Discord/Slack):**
```
Hey everyone! 👋

Built a Business Card Lookup skill for OpenClaw:

- Send a business card photo
- Get back a vCard (save to contacts) + LinkedIn search URL
- Uses Tesseract OCR (no API keys)
- 100% reliable, no browser automation

Perfect for networking events and conferences!

Files attached, try it out! 📇
```

**Long pitch (Blog/LinkedIn):**
```
Tired of manually typing contact info from business cards?

I built an OpenClaw skill that automates it:

1. 📸 Take photo of business card
2. 🤖 OCR extracts text (name, title, company, phone, email)
3. 📇 Creates vCard file (tap to save)
4. 🔗 Generates LinkedIn search URL

No API keys, no browser extensions, 100% reliable.

Here's how to install and use it... [tutorial]
```

---

## 📊 Track Usage (Optional)

Want to know how many people use it?

1. Add analytics to SKILL.md (optional)
2. Create a simple counter service
3. Ask users to report usage
4. Track GitHub stars/downloads

---

## 🙏 Credits

If someone uses your skill, suggest they:
- ⭐ Star the GitHub repo
- 📝 Leave a review on ClawHub
- 🐛 Report issues
- 💡 Suggest improvements
- 🔀 Submit PRs

---

**Happy Sharing! 🎉**

Questions? Reach out to the OpenClaw community!
