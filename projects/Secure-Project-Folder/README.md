\## Secure Project Folder



This script works fully on Linux.



\*\*What it does:\*\*

\- Creates `projectX/` with `data/` and `logs/`

\- `data/` → private to owner (`chmod 700`)

\- `logs/` → owner + group (`chmod 770`)





---



\*\*Run:\*\*

```bash

chmod +x secure-folders.sh

./secure-folders.sh



