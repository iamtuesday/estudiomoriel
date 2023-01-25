module.exports = {
  apps: [
    {
      name: '3014-estudiomoriel-next',
      script: 'node_modules/next/dist/bin/next',
      args: 'start -p 3014', //running on port 3000
      cwd: './app',
      exec_mode: 'fork',
      watch: false
    }
  ]
}
