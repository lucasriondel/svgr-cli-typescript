const spawn = require('child_process').spawn;
const os = require('os');

let cmd;
if (os.platform() === 'win32') {
    cmd = 'npx.cmd'
} else {
    cmd = 'npx'
} 

const npx = spawn(cmd, ['@svgr/cli', '--template', './src/template.js', '--ext', 'tsx'].concat(process.argv.splice(2)), { stdio: 'inherit' });

npx.on('error', function(err) {
  console.error(err);
  process.exit(1);
});