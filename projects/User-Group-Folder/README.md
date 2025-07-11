\# User \& Group Manager Script



\## 📌 Overview



This script demonstrates how to manage \*\*users, groups, and secure shared folders\*\* in a Linux environment — exactly like a real cloud or DevOps engineer would do.



It helps automate:

\- Creating a new user if they don’t exist

\- Creating a new group if it doesn’t exist

\- Adding the user to the group

\- Creating a shared folder with proper permissions



---



\## ⚙️ How It Works



\*\*Key Features:\*\*

\- Prompts the admin to enter a \*\*username\*\* and \*\*group name\*\*

\- Validates if the group exists; creates it if needed

\- Validates if the user exists; creates it if needed, then adds user to the group

\- Creates a \*\*shared folder\*\* at `/tmp/shared\_folder`

&nbsp; - Sets owner and group

&nbsp; - Applies `rwxrwx---` permissions (owner \& group have full access; others have none)



---



\## 🚀 Usage



1️⃣ Make the script executable:

```bash

chmod +x manage-user-group.sh



