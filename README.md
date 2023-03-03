# My .emacs.d

## Issues

* Using zsh within a term mode (ansi-term, vterm), tab completion makes some first characters duplicate

Reason: Invalid LOCALE settings

Reference: https://github.com/syl20bnr/spacemacs/issues/5519

Fix: Set LANG environment variable to `en-US.UTF-8` in `.zsh.rc`

## for javascript

``` shell
npm install -g indium
npm install -g tern
```

## Markdown Mode

* Install `grip`

``` shell
sudo pip install grip
```
