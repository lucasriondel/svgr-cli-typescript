#!/usr/bin/env node

const spawn = require('child_process').spawn;
const os = require('os');
const path = require('path');

let cmd;
if (os.platform() === 'win32') {
    cmd = 'npx.cmd'
} else {
    cmd = 'npx'
}

const pathToTemplate = path.relative(process.cwd(), path.join(__dirname, './template.js'))

const args = ['@svgr/cli', '--template', pathToTemplate, '--ext', 'tsx'].concat(process.argv.splice(2))

const npx = spawn(cmd, args, { stdio: 'inherit' });

npx.on('error', function(err) {
  console.error('npx error');
  console.error(err);
  process.exit(1);
});
