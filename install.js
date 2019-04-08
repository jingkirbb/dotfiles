const path = require('path');
const fs = require('fs');
const os = require('os');
const child_process = require('child_process');
const timestamp = Date.now();

const DOTS_DIR = path.resolve(__dirname, 'dots');

const dotFiles = fs.readdirSync(DOTS_DIR);

for (const dotFile of dotFiles) {
    console.log({ dotFile });
    const from = path.resolve(DOTS_DIR, dotFile);
    const to = path.resolve(os.homedir(), dotFile);

    if (fs.existsSync(to)) {
        const backupName = path.resolve(path.dirname(to), `backup_${timestamp}_${path.basename(to)}`);
        console.log(`Renamed: "${to}" to "${backupName}"`);
        fs.renameSync(to, backupName);
    }

    console.log(`Linking "${from}" to "${to}"`);
    fs.symlinkSync(from, to);
}