#!/bin/bash

# رنگ‌ها برای خروجی زیباتر
GREEN="\e[32m"
RED="\e[31m"
RESET="\e[0m"

# گرفتن ورودی از کاربر (IP و پورت)
TARGET=${1:-127.0.0.1}
PORTS=${2:-"80 443 22 8080"}

echo -e "🔍 Checking open ports on ${TARGET}...\n"

# برای هر پورت در لیست بررسی می‌کنیم
for PORT in $PORTS; do
  nc -zv $TARGET $PORT &> /dev/null
  
  if [ $? -eq 0 ]; then
    echo -e "${GREEN}✅ Port $PORT is open on ${TARGET}!${RESET}"
  else
    echo -e "${RED}❌ Port $PORT is closed on ${TARGET}.${RESET}"
  fi
done
