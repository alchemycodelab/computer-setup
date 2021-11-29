# Configure Git

Like artists, programmers sign their work. Let's configure Git to sign your commits with your name and email address.
in
Make sure you sign up for an account at Github <a href="https://github.com" target="_blank">here</a>.

**WARNING:** Before running the following commands, **replace `YOUR FULL NAME` and `YOUR EMAIL ADDRESS` with the name and email from <a href="https://github.com/settings/profile" target="_blank">your GitHub account</a>.**

```
git config --global user.name 'YOUR FULL NAME'
git config --global user.email 'YOUR EMAIL ADDRESS'
```

#### The terminal does not send success messages, in order to double check that you have successfully assigned your username and email:

```
git config --list
```
