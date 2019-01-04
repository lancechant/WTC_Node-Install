# NodeJS Setup for WTC

This bash script allows students at WeThinkCode to be able to use NodeJS on the macs 

# To Install

` sh -c "$(curl -fsSL https://raw.githubusercontent.com/lancechant/WTC_Node-Install/master/node.sh)"`
<br>
once that is complete please go to into the the node folder then deps/npm/bin/ and open the npm executable in a text editor

change these 
<br>
`NPM_CLI_JS="$basedir/node_modules/npm/bin/npm-cli.js"`
<br>
`NPM_PREFIX_NPM_CLI_JS="$NPM_PREFIX/node_modules/npm/bin/npm-cli.js"`
<br>
to this 
<br>
`NPM_CLI_JS="$basedir/npm-cli.js"`
<br>
`NPM_PREFIX_NPM_CLI_JS="$NPM_PREFIX/npm-cli.js"`

# How it Works

This downloads the nodejs source code and installs it onto your freshly reset Mac. 
