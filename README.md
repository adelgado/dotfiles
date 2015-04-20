# dotfiles
Repositório para minhas configurações UNIX. Visa ser compatível com Mac OS X e Linux.

From GG:

```
function deploy-all-the-apps()
{
  cap "$@" deploy app=story fastly=true; cap "$@" deploy app=tags fastly=true; cap "$@" deploy app=homepage fastly=true; cap "$@" deploy app=welcome fastly=true; cap "$@" deploy app=profiles fastly=true;
}
```
