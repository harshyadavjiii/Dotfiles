# Dotfiles

###### These are config files for the daily day tools that I use
---

## My Window Manager
I do use bspwm I like the default tiling layout of bspwm and it's very easy to configure in fact all 
I am using is just bspwm's default config just a couple of lines here and there.


![2022-05-20](https://user-images.githubusercontent.com/52949057/174979501-431bb1d1-559c-4f41-a3c9-a0c4602d4e9d.png)


I use sxhkd for key bindings which is yet another easy to configure tool. 
 Here are my key bindings -
 
| Shortcut Key                | Description                                    |
| -----------                 | -----------                                    |
| Super + enter               | Launches Kitty                                 |
| Super + w                   | Closes the current window                      |
| Super + a                   | Launches Alacritty                             |
| Super + Space               | Launches Rofi in drun mode                     |
| Super + tab                 | Launches Rofi to Switch between active windows |
| Super + f                   | Full size the current window                   |
| Super + m                   | Switches to Mono Layout                        |
| Super + t                   | Switches to Grid Layout                        |
| Super + s                   | Switches to Floating Mode                      |
| Super + x                   | Turn off the bar                               |
| Super + z                   | Turn on the bar                                |
| Super +( <-,->)             | Moves the current window in floating mode      |
| Shift + Super + (h,j,k,l)   | Switches the current Window position           |
| Alt + Super + (h,j,k,l)     | Resize the current window                      |
| F2                          | Decreases Volume by 5%                         |
| F3                          | Increases Volume by 5%                         |
| Prt Sc                      | Take High Quality Screenshot                   |
| Shift + Prt Sc              | Take Screenshot of the current window          |

These are pretty much all of the frequent ones but if you consider you can read my sxhkdrc to know all of them

### Bar

---
I do use Yabar as my bar which is very easy to set up and to configure. Yabar just requires you one config file and You need no shell 
Scripting at all infact I have just used yabar modules **YABAR_BATTERY**, **YABAR_WORKSPACE**, **YABAR_TITLE**, **YABAR_WIFI**, and **YABAR_VOLUME**
to configure my bar and trust me I don't need anything else except these modules. You can easily cofigure yabar by reading this [doc](https://github.com/geommer/yabar/blob/master/doc/yabar.1.asciidoc)

### Vim
---
Vim is by far most famous Unix text editor. I have used Vim Plug to manage vim plugins in my config.
 My config is pretty simple and clean. I don't use a dozen of PlugIns but the one's that works best for me.
 I do Use C Vim PlugIn for programming in C and C++ it helps me to write C/C++ Programs much faster and also 
 let me compile and execute C/C++ Programs inside Vim. It also has pre-defined macros and code snippets which makes it
 So handy when it comes to C/C++ Programming.
 
 
 
 | Shortcut Key                | Description               |
 | -----------                 | -----------               |
 | jk (Insert Mode)            | To escape                 |
 | Space (Normal Mode)         | :command                  |
 | c (Normal Mode)             | Compiles a C/C++ Program  |
 | e (Normal Mode)             | Executes a C/C++ Program  |
 | \im (Normal Mode)           | adds the main function    |
 | \if (Normal Mode)           | adds a C/C++ function     |
 | gc (Normal Mode)            | Comment/Uncomment code    |
 | Ctrl + a                    | :NerdTreeFocus            |
 | Ctrl + z                    | :NerdTree                 |
 | Ctrl + x                    | :NerdTreeToggle           |
 
 
 
 
 Another usecase for me to use Vim is to make notes in markdown. In my expirience it works better a lot better then
 using Apps like Simple Note. There are three Vim PlugIns that I use to make my Note making expirience distraction free. 
 Limelight - *it highlights the current line I am on*, *Goyo which centered the whole text and removes any active terminal, buffer, Statusline, etc.*
 and the last one is Instant Markdown Preview which is my favourite - *It previews the changes I made to my markdown file Instantly in My Browser*
 
 
 ![Note-Making](https://user-images.githubusercontent.com/52949057/174978210-73e7daa8-41f6-4e80-9e73-56574e0a9de5.png)
 
 
 
 
 ****Other than these tools I use Kitty and Alacritty as Terminal emulators I think I have just changed a couple of 
 options in them such as the opacity rule, font, and the terminal color Schemes - ayu dark for Alacritty and I built a custom
 color scheme for Kitty****
