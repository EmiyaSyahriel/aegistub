# Aegistub
LuaLS-friendly stub code for Aegisub Automation 4 Lua API

I made this stub code so that I can just use the LuaLS to make sure that 
my automation script is syntactically okay without doing trial and
error, back and forth between Zed and Aegisub.

I just write simple documentation in the stub, some don't even have a
documentation, so if you want to add the full docs to the stub annotations, 
it is okay to make changes, and if you're interested, also making pull request
for your changes to this repo.

## Target audience
This stub code is only for those who wanted to use LSP in Editor or IDE to make/work
with Aegisub Automation 4 Lua script, if you can just write your script in LSP-less
text editor or not using LSP for Aegisub Automation script, then you don't 
need this stub code.

## How to use
1. Clone / download the repository to your local storage
2. Edit your .luarc.json like this:
```json
  "workspace.library": [
        // ... your other libraries ...
      "/path/to/aegistub",
        // ... your other libraries ...
  ]
```
3. Reload your LSP ( or your entire IDE/Editor )
4. Now you have a working auto-completion toward Aegisub type and functions

> Keep away from including this to the actual Aegisub as it could cause duplicate definition error.
> Fortunately, Aegisub doesn't load `.luarc.json` and usually just load a single file + it's 
> dependency modules, so as long as you code your script normally and didn't dunk the entire stub 
> directory right into the `autoload` directory, Aegisub would just happily accept your script.

## How I made this
By reading Aegisub's Lua reference documentation [here](https://aegisub.org/docs/latest/automation/lua/), 
keep in mind that the stub isn't 1:1 with the documentation, I made some differences to some types so that 
the LSP could infer a better usage suggestion for certain function and types ( opaque tables that can be 
annotated with better type in particular ).

The reason why I made this is because you can't just put Aegisub include directory to the .luarc.json file 
and expect the LSP would like it, and some function and variables were injected on the fly into the Lua engine
from Aegisub itself, so there is no definition file to include.

By the way, this is my first time actually working with full Lua, so please bear with my code :)

## License
This stub is under MIT License

Aegisub is under GPL-compatible BSD-style license
