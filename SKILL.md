---
name: business-card-lookup
description: Extract contact info from business card photos using OCR, create vCard files, and generate LinkedIn search URLs. No API keys needed - uses Tesseract OCR.
metadata: { "openclaw": { "emoji": "📇" } }
---

# Business Card Lookup Skill 📇

Extract contact information from business card photos, create vCard (.vcf) files, and generate LinkedIn search URLs.

## Trigger

User sends an image that appears to be a business card, or explicitly asks to extract contact info from a business card photo.

## Prerequisites

- Tesseract OCR (usually pre-installed: `tesseract --version`)
- OpenClaw workspace with write permissions
- No API keys required!

## Core Workflow

### Step 1: Extract Contact Info (OCR)

```bash
# Run OCR on the business card image
tesseract <image-path> stdout --psm 6
```

**Parse extracted text to identify:**
| Field | Pattern/Location |
|-------|-----------------|
| Name | Usually prominent, often at top |
| Job Title | Below name, often with company |
| Company | Near name/title |
| Phone | Look for +, Tel, Mobile, Direct patterns |
| Email | Standard email pattern |
| Website | URL patterns |
| Address | Street, city, postal code patterns |

### Step 2: Create vCard

Generate a `.vcf` file:

```vcf
BEGIN:VCARD
VERSION:3.0
FN:{Full Name}
N:{Last Name};{First Name};;;
ORG:{Company}
TITLE:{Job Title}
TEL;TYPE=WORK,VOICE:{Work Phone}
TEL;TYPE=CELL:{Mobile Phone}
EMAIL;TYPE=WORK:{Email}
URL:{Website}
ADR;TYPE=WORK:;;{Street};{City};{State};{Postal Code};{Country}
END:VCARD
```

**Save to:** `/workspace/contacts/{FirstName}_{LastName}.vcf`

### Step 3: Generate LinkedIn URLs

**Search URL (most reliable):**
```
https://www.linkedin.com/search/results/people/?keywords={FirstName}%20{LastName}%20{Company}
```

**Direct profile URL guesses:**
```
linkedin.com/in/{firstname-lastname}/
linkedin.com/in/{firstname-lastname-company}/
linkedin.com/in/{firstinitial-lastname}/
```

### Step 4: Send Results

Return to user:
1. ✅ vCard file attachment (`.vcf`)
2. ✅ LinkedIn search URL
3. ✅ Summary of extracted contact info

## Example Output

```
✅ Business Card Extracted!

Contact Info:
• Name: John Doe
• Title: CEO
• Company: Acme Corp
• Phone: +1-555-123-4567
• Email: john@acme.com

📇 vCard attached - tap to save!

🔗 LinkedIn:
linkedin.com/search/results/people/?keywords=John%20Doe%20Acme%20Corp
```

## Implementation Tips

### OCR Best Practices
- Use `--psm 6` for business cards (uniform block of text)
- If OCR confidence is low, ask user to confirm extracted info
- For non-English cards, specify language: `-l eng+chi_sim`

### vCard Best Practices
- Create `/workspace/contacts/` directory if it doesn't exist
- Use `{FirstName}_{LastName}.vcf` naming convention
- Handle special characters in names (remove or replace)

### LinkedIn URL Best Practices
- Always provide search URL (100% reliable)
- Provide 2-3 direct URL guesses as fallbacks
- No browser automation needed!

## Error Handling

| Error | Action |
|-------|--------|
| OCR returns empty text | Ask user for clearer photo |
| Can't parse email | Flag as "needs verification" |
| Multiple names detected | Ask user to confirm which is the contact |
| vCard write fails | Check workspace permissions |

## Tools Used

| Tool | Purpose |
|------|---------|
| `read` | Read the business card image |
| `exec` | Run tesseract OCR |
| `write` | Save vCard file |
| `message` | Send vCard and results to user |

## Why This Approach?

- ✅ **100% reliable** - No browser automation flakiness
- ✅ **No API keys** - Uses built-in Tesseract OCR
- ✅ **Works on mobile** - LinkedIn URLs work everywhere
- ✅ **User control** - User browses LinkedIn results themselves
- ✅ **Simple** - Easy to understand and maintain
- ✅ **Fast** - No waiting for page loads

## Safety & Privacy

- Store contacts locally only (`/workspace/contacts/`)
- Don't exfiltrate contact data externally
- User owns their contact data
- Respect business card privacy (don't share without permission)

## Related Skills

- `linkedin-scraper` - For automated LinkedIn profile scraping (requires browser)
- `contact-manager` - For organizing and managing extracted contacts
