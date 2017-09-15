Setup for Mac OS X
------------------

This guide will help you setup a software development environment on <a href="https://www.apple.com/osx/" target="_blank">Mac OS X 10.9 Mavericks</a> and above. By the end, your computer will be configured with the same state-of-the-art tools used by professional software developers.

This guide is mostly compatible with older versions of Mac OS X. So follow along as best you can while Googling any problems you come across.


### The Terminal

Included in Mac OS X is the **Terminal**—an app that runs a Unix shell.

A **Unix shell** (often referred to as a "terminal") is a command line user interface between you and your computer's operating system. In a Unix shell, you can type in commands that tell the computer to do many things: navigate to files and folders, install and run programs, and change configurations. Programmers rely on their Unix shells to do lots of work, quickly and easily.

You're probably most familiar with the graphical user interface (the "GUI") of your computer's operating system. Those are the boxes, windows, and menu items that you click on with your mouse. While that's technically a shell too, most programmers think of the textual, command line interface when they hear to word _shell_.


### Explore the Terminal

Let's get our hands dirty and have some fun. First, use Spotlight to launch the Terminal app.

![](https://i.imgur.com/dvrwugy.jpg)

Once launched, you'll see something like this.

![](https://i.imgur.com/7d6GeeO.png)

Here's a quick break down of what you're seeing in the Terminal app.

| Component             | Description                            |
| --------------------- | -------------------------------------- |
| `Wed Jan 28 08:12:49` | Date of your last login                |
| `ttys003`             | Name of your last terminal session     |
| `photon`              | Name of your computer                  |
| `~` (home directory)  | Name of your working directory         |
| `ryansobol`           | Name of your user account              |
| `$`                   | Prompt symbol                          |

Any characters you type will appear after the `$` prompt symbol. Go ahead and type `uname`. After pressing the Enter key, you'll see something like this.

![](https://i.imgur.com/eGnT4NZ.png)

Here's what happened:

1. The shell waited for you to type a command.
1. You then typed the word `uname` which appeared after the prompt.
1. You pressed the Enter key which triggered the shell to accept your input.
1. The shell searched for a program called `uname`.
1. Once found, the shell launched the `uname` program and handed it control over the Terminal.
1. While running, the `uname` program told the Terminal to display the word `Darwin`.
1. Once finished, the `uname` program exited and handed control of the Terminal back to the shell.
1. The shell told the Terminal to display another prompt.
1. Once displayed, the shell began waiting for your next command.

Simply stated, a Unix shell works in a read-evaluate-print loop or **REPL**.


### Change the Terminal Profile

The default profile for the Terminal uses small, black text on a white background. Boring! Let's change that.

1. In the Terminal app, navigate to the `Terminal > Preferences` menu item.
1. In the preferences window, click the `Settings` Pane.
1. On the left side, scroll to the bottom, select the `Pro` profile, and click the `Default` button. ![](https://i.imgur.com/TQmcT8A.png)
1. Finally, quit and relaunch the Terminal.

Now, every new Terminal window will look similar to this.

![](https://i.imgur.com/87bHvEF.png)


### [Next ⇒](2_vscode.md)
