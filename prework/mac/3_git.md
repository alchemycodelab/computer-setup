### Install Git

Version control systems let programmers share and collaborate on code. With Git, multiple programmers can work on the same files, and Git keeps track of who made what changes, when. Git is usually used with a website, GitHub, that stores code (in "repositories") and lets programmers review and discuss changes before they are added. In short, Git makes everyone's lives easier.

There are multiple versions of the Git, and the one you use on depends on which version of Mac OSX (e.g. Snow Leopard, Lion, Mountain Lion, Mavericks, Yosemite, El Capitan, etc.) you are running. There are currently two choices. One will work on any Mac (but will not have all the latest features) and the other will work *only* on Macs with the newer OS versions installed (Mavericks, Yosemite, and El Capitan).

*Either version will work for this course* **however** if you have an older Mac OS (Snow Leopard, Lion, Mountain Lion) then the newer version will not work at all.

####To check which OS version you are running:####
Click the apple icon in the upper left corner of your screen. Then click on `about this mac`. You will see something like this:

![](http://imgur.com/yxXSJa7.png)

If your screen shows OSX Snow Leopard (version 10.6.xx), OSX Lion (version 10.7.xx), or OSX Mountain Lion (version 10.8.xx) then you **MUST** download the old version of Git. To get the older version click <a href="https://sourceforge.net/projects/git-osx-installer/files/git-2.3.5-intel-universal-snow-leopard.dmg/download">here (older version)</a>.

If you have Mavericks (10.9.xx), Yosemite (10.10.xx), or El Capitan (10.11.xx) then you should use the <a href="http://git-scm.com/download/mac" target="_blank">latest version</a>. Download and install accordingly.

Once it is fully installed, open Terminal and run the following command.

```
git --version
```

And you'll see something like this.

![](https://i.imgur.com/jBSs1qR.png)


### Git Config

You're on the home stretch now! :racehorse:

Like artists, programmers sign their work. Let's configure Git to sign your commits with your name and email address.

Sign up for an account at Github <a href="https://github.com" target="_blank">here</a>.

**WARNING:** Before running the following commands, replace `YOUR FULL NAME` and `YOUR EMAIL ADDRESS` with the name and email from <a href="https://github.com/settings/profile" target="_blank">your GitHub account</a>.

```
git config --global user.name 'YOUR FULL NAME'
git config --global user.email 'YOUR EMAIL ADDRESS'
```

The terminal does not send success messages, in order to double check that you have successfully assigned your username and email:

```
git config --list
```

Your terminal should output the following lines:

```
user.email='YOUR EMAIL ADDRESS'
user.name='YOUR FULL NAME'
```

### Congratulations!


### [⇐ Previous](2_vscode.md) | [README ⇒](../../../../)
