# zsh-npm

[![License](https://img.shields.io/github/license/vladhaidukkk/zsh-npm)](https://opensource.org/licenses/MIT)

This Oh-My-Zsh plugin provides aliases for npm commands and enables npm completion.

It's based on [the official npm plugin for Oh-My-Zsh](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/npm), but completely changes the aliases and adds a lot more of them.

## Installation

1. Run this command in terminal: `git clone https://github.com/vladhaidukkk/zsh-npm.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-npm`
2. Add **zsh-npm** to your plugins list - edit `.zshrc` and change `plugins=(...)` to `plugins=(... zsh-npm)`

## Aliases

| Alias     | Command                                            | Description                                                                                       |
|-----------|----------------------------------------------------|---------------------------------------------------------------------------------------------------|
| `n`       | `npm`                                              | The Npm command                                                                                   |
| `nv`      | `npm -v`                                           | Print Npm version                                                                                 |
| `nnew`    | `npm init`                                         | Interactively creates or updates a package.json file                                              |
| `nnewy`   | `npm init -y`                                      | Create a package.json file with default options                                                   |
| `ni`      | `npm i`                                            | Install a package in dependencies (`package.json`)                                                |
| `nig`     | `npm i -g`                                         | Install packages globally on your operating system                                                |
| `nid`     | `npm i -D`                                         | Install a package in devDependencies (`package.json`)                                             |
| `nide`    | `npm i -D -E`                                      | Install a package in devDependencies (`package.json`) with exact version                          |
| `nio`     | `npm i -O`                                         | Install a package in optionalDependencies (`package.json`)                                        |
| `nioe`    | `npm i -O -E`                                      | Install a package in optionalDependencies (`package.json`) with exact version                     |
| `nci`     | `npm ci`                                           | Install a project with a clean slate                                                              |
| `nrm`     | `npm rm`                                           | Remove installed packages                                                                         |
| `nrmg`    | `npm rm -g`                                        | Remove global installed packages                                                                  |
| `nrms`    | `npm rm -S`                                        | Remove installed packages from dependencies                                                       |
| `nrmd`    | `npm rm -D`                                        | Remove installed packages from devDependencies                                                    |
| `nrmo`    | `npm rm -O`                                        | Remove installed packages from optionalDependencies                                               |
| `no`      | `npm outdated`                                     | Check which packages are outdated                                                                 |
| `nog`     | `npm outdated -g`                                  | Check which global packages are outdated                                                          |
| `nu`      | `npm update`                                       | Update packages to the latest version                                                             |
| `nug`     | `npm update -g`                                    | Update global packages to the latest version                                                      |
| `nls`     | `npm ls`                                           | List installed packages                                                                           |
| `nls0`    | `npm ls --depth=0`                                 | List top-level installed packages                                                                 |
| `nlsg`    | `npm ls -g`                                        | List global installed packages                                                                    |
| `nlsg0`   | `npm ls -g --depth=0`                              | List global top-level installed packages                                                          |
| `na`      | `npm audit`                                        | Run a security audit                                                                              |
| `naf`     | `npm audit fix`                                    | Run a security audit and try to fix all vulnerabilities                                           |
| `nr`      | `npm run`                                          | Run npm scripts                                                                                   |
| `nst`     | `npm start`                                        | Run npm start script                                                                              |
| `nt`      | `npm test`                                         | Run npm test script                                                                               |
| `nb`      | `npm run build`                                    | Run npm build script                                                                              |
| `nc`      | `npm config`                                       | Manage the npm configuration files                                                                |
| `ncg`     | `npm config get`                                   | Print the config value to stdout                                                                  |
| `ncs`     | `npm config set`                                   | Sets the config key to the value                                                                  |
| `ncd`     | `npm config delete`                                | Deletes the key from all configuration files                                                      |
| `ncls`    | `npm config list`                                  | Show all the config settings                                                                      |
| `ncc`     | `npm cache clean`                                  | Delete all data out of the cache folder                                                           |
| `ncv`     | `npm cache verify`                                 | Verify the contents of the cache folder                                                           |
| `nh`      | `npm help`                                         | Get help on npm                                                                                   |
| `ns`      | `npm search`                                       | Search for packages                                                                               |
| `ninf`    | `npm info`                                         | View registry info                                                                                |
| `nrep`    | `npm repo`                                         | Open package repository page in the browser                                                       |
| `ndoc`    | `npm docs`                                         | Open docs for a package in a web browser                                                          |
| `nlin`    | `npm login`                                        | Symlink a package folder                                                                          |
| `nlout`   | `npm logout`                                       | Log out of the registry                                                                           |
| `nwai`    | `npm whoami`                                       | Display npm username                                                                              |
| `np`      | `npm profile`                                      | Change settings on your registry profile                                                          |
| `npg`     | `npm profile get`                                  | Display all of the properties of your profile, or more specific properties                        |
| `nps`     | `npm profile set`                                  | Set the value of a profile property                                                               |
| `npb`     | `npm publish`                                      | Publish a package                                                                                 |
| `nunpb`   | `npm unpublish`                                    | Remove a package from the registry                                                                |
| `ntm`     | `npm team`                                         | Manage organization teams and team memberships                                                    |
| `ntmc`    | `npm team create`                                  | Create a new team                                                                                 |
| `ntmd`    | `npm team destroy`                                 | Destroy an existing team                                                                          |
| `ntma`    | `npm team add`                                     | Add a user to an existing team                                                                    |
| `ntmrm`   | `npm team rm`                                      | Remove a user from an existing team                                                               |
| `ntmls`   | `npm team ls`                                      | List existing teams of an organization                                                            |
| `nprn`    | `npm prune`                                        | Remove extraneous packages                                                                        |
| `nlnk`    | `npm link`                                         | Symlink a package folder                                                                          |
| `nsh`     | `npm shrinkwrap`                                   | Lock down dependency versions for publication                                                     |
| `npck`    | `npm pack`                                         | Create a tarball from a package                                                                   |
| `nddp`    | `npm dedupe`                                       | Reduce duplication                                                                                |
| `nrm_nm`  | `rm -rf ./node_modules/`                           | Delete node_modules                                                                               |
| `nrm_lck` | `rm -rf ./package-lock.json ./npm-shrinkwrap.json` | Delete lock files                                                                                 |
| `nri_nm`  | `nrm_nm && ni`                                     | Reinstall packages                                                                                |
| `nri_all` | `nrm_nm && nrm_lck && ni`                          | Reinstall packages and recreate package-lock                                                      |
| `ne`      | `PATH=$(npm bin):$PATH`                            | Add the local node_modules/.bin folder to your $PATH, which will allow the installed utils to run |
