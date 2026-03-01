#!/bin/bash
# vCard Generator
# Usage: ./generate-vcard.sh "Full Name" "Company" "Title" "Phone" "Email" "Website" "Address"

# Use the OpenClaw workspace env var if it exists; otherwise, default to a local directory.
WORKSPACE_ROOT="${OPENCLAW_WORKSPACE:-$HOME/.openclaw/workspace}"
CONTACTS_DIR="$WORKSPACE_ROOT/contacts"

# Ensure the directory exists without hardcoding a specific user's path
mkdir -p "$CONTACTS_DIR"

FULL_NAME="$1"
COMPANY="$2"
TITLE="$3"
PHONE="$4"
EMAIL="$5"
WEBSITE="$6"
ADDRESS="$7"

if [ -z "$FULL_NAME" ]; then
    echo "Error: Full name is required"
    exit 1
fi

# Parse name into first/last
FIRST_NAME=$(echo "$FULL_NAME" | awk '{print $1}')
LAST_NAME=$(echo "$FULL_NAME" | awk '{$1=""; print $0}' | sed 's/^ //')

# Create safe filename
SAFE_NAME=$(echo "$FULL_NAME" | tr ' ' '_' | tr -cd '[:alnum:]_')
VCARD_FILE="/home/chris/.openclaw/workspace/contacts/${SAFE_NAME}.vcf"

# Ensure contacts directory exists
mkdir -p /home/chris/.openclaw/workspace/contacts

# Generate vCard
cat > "$VCARD_FILE" << EOF
BEGIN:VCARD
VERSION:3.0
FN:$FULL_NAME
N:$LAST_NAME;$FIRST_NAME;;;
ORG:$COMPANY
TITLE:$TITLE
TEL;TYPE=WORK,VOICE:$PHONE
EMAIL;TYPE=WORK:$EMAIL
URL:$WEBSITE
ADR;TYPE=WORK:;;$ADDRESS;;;;
END:VCARD
EOF

echo "$VCARD_FILE"
