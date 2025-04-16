#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'
echo -e "${RED}Enter number of files to be created:${NC} " 
read num
if ! [[ $num =~ ^[0-9]+$ ]]; then
echo -e "${RED}Invalid number entered${NC}"
exit 1
fi
mkdir -p generated_files
for ((i=1;i<=$num;i++))
do
touch "generated_files/files$i.txt"
echo -e "${YELLOW}Created file$i successfully${NC}"
done
echo -e "${YELLOW}$num files created in generated_files${NC}"
