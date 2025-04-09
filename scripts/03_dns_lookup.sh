#!/bin/bash

# رنگ‌ها برای خروجی زیباتر
GREEN="\e[32m"
RED="\e[31m"
RESET="\e[0m"

# گرفتن ورودی از کاربر (دامنه یا IP)
TARGET=${1:-google.com}

echo -e "🔍 Performing DNS Lookup for ${TARGET}...\n"

# استفاده از دستور dig برای جستجو
dig $TARGET +short

# بررسی وضعیت اجرای دستور dig
if [ $? -eq 0 ]; then
  echo -e "${GREEN}✅ DNS Lookup completed successfully for ${TARGET}!${RESET}"
else
  echo -e "${RED}❌ DNS Lookup failed for ${TARGET}.${RESET}"
fi
