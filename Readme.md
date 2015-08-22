## Python!

It's
- Snakes on a container ship!
- More fun than a barrel of monkeys.

### Serious Information

The git branching struture and git commit tagging of this repository 
is designed to result in our docker build server, maintaining a family
of python images. This repo gennerates tagged python images we can use
to obtain any version of python we like.

Master in this repo contains a dockerfile that just confirms python-build 
works correctly by listing available versions when it is built.
The structure is each major python versions exist as a branch, and each
versioned python release is a new taged version of the container.   

Dockerfiles dont give a very good way to automatically 'rebuild' images
from the 'dev' branches in pyenv. If it ever becomes necessary for us to
have 'rolling' versions of python, the best way will probably be to write
our own build definitions as documented here.
https://github.com/yyuu/pyenv/tree/master/plugins/python-build 
If we write our own definitions, nothing stops us from generating them
against any arbitrary git/hg commit we please.