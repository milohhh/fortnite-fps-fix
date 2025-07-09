# Fortnite FPS Fix

> I usually work in JavaScript, but I stepped out of my comfort zone for a moment to build this simple `fps_fix.bat` script for Fortnite.  
>
> I was experiencing annoying FPS drops and stutters during gameplay, so I created this batch file to clean up system temp files, disable background services, optimize network settings, and launch Fortnite with high CPU priority for smoother performance.  
>
> This script also creates a helper launcher batch file on your desktop to start Fortnite in high priority mode — making it easier to run with optimizations every time.  
>
> I’m sharing this in case it helps others who face similar performance issues.  
>
> — `@milo`

---

## Features

- Closes unnecessary background apps (Discord, Epic Games Launcher, Steam, OneDrive)  
- Clears system temp files and Windows prefetch cache  
- Resets Fortnite configuration files to prevent corruption issues  
- Disables Xbox Game Bar and Game DVR overlays that cause FPS drops  
- Switches Windows to High Performance power plan for better CPU/GPU throughput  
- Creates a high-priority Fortnite launcher batch file on your desktop for easy use  
- Applies TCP network optimizations for improved online play stability  

---

## Installation & Usage

1. **Download** or **clone** this repository.  
2. **Run** the `fps_fix.bat` script **as Administrator** (Right-click → Run as Administrator).  
3. Follow the on-screen prompts until completion.  
4. A new launcher batch file named `Launch_Fortnite_@milo.bat` will appear on your desktop.  
5. Use this launcher to start Fortnite — it will run with high CPU priority and optimized settings.  

---

## Notes

- Tested on Windows 10 and 11.  
- If your Fortnite installation is in a non-default path, edit the `fps_fix.bat` script to update the executable path accordingly.  
- This script does **not** modify core game files or critical system settings outside of optimization scopes.  

---

## Contributing

Feel free to open issues or submit pull requests with improvements or fixes!  

---

## License

This project is released under the MIT License. See [LICENSE](LICENSE) for details.

---

### Author

`@milo`

---

Thanks for checking this out — enjoy smoother Fortnite gameplay!  

