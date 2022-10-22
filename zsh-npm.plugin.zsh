(( $+commands[npm] )) && {
  rm -f "${ZSH_CACHE_DIR:-$ZSH/cache}/npm_completion"

  _npm_completion() {
    local si=$IFS
    compadd -- $(COMP_CWORD=$((CURRENT-1)) \
                 COMP_LINE=$BUFFER \
                 COMP_POINT=0 \
                 npm completion -- "${words[@]}" \
                 2>/dev/null)
    IFS=$si
  }
  compdef _npm_completion npm
}

# Basic
alias n="npm"
alias nv="npm -v"

# Initialize
alias nnew="npm init"
alias nnewy="npm init -y"

# Install
alias ni="npm i"
alias nig="npm i -g"
alias nid="npm i -D"
alias nide="npm i -D -E"
alias nio="npm i -O"
alias nioe="npm i -O -E"

# Clean install
alias nci="npm ci"

# Remove
alias nrm="npm rm"
alias nrmg="npm rm -g"
alias nrms="npm rm -S"
alias nrmd="npm rm -D"
alias nrmo="npm rm -O"

# Outdated
alias no="npm outdated"
alias nog="npm outdated -g"

# Update
alias nu="npm update"
alias nug="npm update -g"

# List
alias nls="npm list"
alias nls0="npm list --depth=0"
alias nlsg="npm list -g"
alias nlsg0="npm list -g --depth=0"

# Audit
alias na="npm audit"
alias naf="npm audit fix"

# Run scripts
alias nr="npm run"
alias nst="npm start"
alias nt="npm test"
alias nb="npm run build"

# Config
alias nc="npm config"
alias ncg="npm config get"
alias ncs="npm config set"
alias ncd="npm config delete"
alias ncls="npm config list"

# Cache
alias ncc="npm cache clean"
alias ncv="npm cache verify"

# Help
alias nh="npm help"

# Explore packages
alias ns="npm search"
alias ninf="npm info"
alias nrep="npm repo"
alias ndoc="npm docs"

# Session
alias nlin="npm login"
alias nlout="npm logout"
alias nwai="npm whoami"

# Profile
alias np="npm profile"
alias npg="npm profile get"
alias nps="npm profile set"

# Publish
alias npb="npm publish"
alias nunpb="npm unpublish"

# Team
alias ntm="npm team"
alias ntmc="npm team create"
alias ntmd="npm team destroy"
alias ntma="npm team add"
alias ntmrm="npm team rm"
alias ntmls="npm team ls"

# Other
alias nprn="npm prune"
alias nlnk="npm link"
alias nsh="npm shrinkwrap"
alias npck="npm pack"
alias nddp="npm dedupe"

# Special

# Delete node_modules
alias nrm_nm="rm -rf ./node_modules/"

# Delete lock files
alias nrm_lck="rm -rf ./package-lock.json ./npm-shrinkwrap.json"

# Reinstall packages
alias nri_nm="nrm_nm && ni"

# Reinstall packages and recreatre package-lock
alias nri_all="nrm_nm && nrm_lck && ni"

# Add the local node_modules/.bin folder to your $PATH, which will allow the installed utils to run
# e.g., npm i -D cowsay && ne cowsay "Hello world"
# or you can just execule ne alias once and call all utils without it at the beginning
# e.g., npm i -D cowsay && ne && cowsay "Hello world"
alias ne="PATH=$(npm bin):$PATH"
