#!/bin/bash

LOG_FILE="menu.log"

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

while true
do
    clear
    echo -e "${YELLOW}====== MENU ======${NC}"
    echo "1. Print Date"
    echo "2. List Files"
    echo "3. Show Current Directory"
    echo "4. Exit"
    echo -n "Enter your choice [1-4]: "
    read choice

    case $choice in
        1)
            echo -e "${GREEN}📅 Date and Time: $(date)${NC}"
            echo "[$(date)] User selected: Print Date" >> "$LOG_FILE"
            ;;
        2)
            echo -e "${GREEN}📂 Files:${NC}"
            ls -lah
            echo "[$(date)] User selected: List Files" >> "$LOG_FILE"
            ;;
        3)
            echo -e "${GREEN}📁 Current Directory: $(pwd)${NC}"
            echo "[$(date)] User selected: Show Current Directory" >> "$LOG_FILE"
            ;;
        4)
            echo "[$(date)] User exited the menu" >> "$LOG_FILE"
            echo -e "${RED}👋 Exiting. Have a great day!${NC}"
            break
            ;;
        *)
            echo -e "${RED}❌ Invalid choice. Please select 1-4.${NC}"
            echo "[$(date)] Invalid option entered: $choice" >> "$LOG_FILE"
            ;;
    esac

    echo
    read -p "🔁 Press Enter to return to the menu..."
done
