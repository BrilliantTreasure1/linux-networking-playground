#!/bin/bash

# رنگ‌ها برای خروجی زیباتر
GREEN="\e[32m"
RED="\e[31m"
RESET="\e[0m"

TARGET=${1:-8.8.8.8}

echo -e "🔍 Testing connectivity to ${TARGET}...\n"

ping -c 4 $TARGET > /dev/null 2>&1

if [ $? -eq 0 ]; then
  echo -e "${GREEN}✅ $TARGET is reachable!${RESET}"
else
  echo -e "${RED}❌ $TARGET is not reachable.${RESET}"
fi
