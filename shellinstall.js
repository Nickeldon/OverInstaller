const shell = require('shelljs')
const fs = require('fs')
//const path = process.env.APPDATA + '/Projects/OverPrompt'
const path = process.env.APPDATA + "/"
try {
    if (!fs.existsSync(path)) {
      fs.mkdirSync(path);
    }
  } catch (err) {
    console.error(err);
  }

shell.cd(path)
shell.exec('git clone https://github.com/Nickeldon/OverPrompt')