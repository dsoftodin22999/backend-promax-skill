#!/usr/bin/env node

const fs = require('fs');
const path = require('path');

// ANSI Colors
const CYAN = '\x1b[36m';
const GREEN = '\x1b[32m';
const YELLOW = '\x1b[33m';
const RED = '\x1b[31m';
const RESET = '\x1b[0m';
const BOLD = '\x1b[1m';

console.log(`${CYAN}${BOLD}====================================================${RESET}`);
console.log(`${CYAN}${BOLD}   BACKEND PRO MAX v2.0 - INITIALIZATION${RESET}`);
console.log(`${CYAN}${BOLD}   Backend Intelligence for AI Coding Agents${RESET}`);
console.log(`${CYAN}${BOLD}====================================================${RESET}\n`);

const targetDir = process.cwd();
const sourceDir = path.join(__dirname, '..');

const itemsToCopy = [
    '.claude', '.cursor', '.windsurf', '.trae',
    '.agent', '.github', '.kiro', '.codex',
    '.qoder', '.roo', '.gemini', '.shared',
    '.cursorrules'
];

console.log(`${YELLOW}Target Project:${RESET} ${targetDir}\n`);

let successCount = 0;
let failCount = 0;

itemsToCopy.forEach(item => {
    const srcPath = path.join(sourceDir, item);
    const destPath = path.join(targetDir, item);

    if (fs.existsSync(srcPath)) {
        console.log(`[COPYING] ${item}...`);
        try {
            fs.cpSync(srcPath, destPath, { recursive: true, force: true });
            successCount++;
        } catch (e) {
            console.error(`${RED}[FAILED] ${item}: ${e.message}${RESET}`);
            failCount++;
        }
    }
});

console.log(`\n${GREEN}[SUCCESS] Backend Pro Max Skill v2.0 installed!${RESET}`);
console.log(`${CYAN}----------------------------------------------------${RESET}`);
console.log(`${BOLD}Components installed:${RESET} ${successCount}`);
if (failCount > 0) {
    console.log(`${RED}Components failed:${RESET} ${failCount}`);
}
console.log(`\n${BOLD}NEXT STEPS:${RESET}`);
console.log(`1. Open your project in Cursor, Windsurf, or Claude Code.`);
console.log(`2. Type ${YELLOW}/backend-pro-max${RESET} to generate system design.`);
console.log(`3. Check ${YELLOW}BACKEND_MASTER.md${RESET} for your architecture.`);
console.log(`${CYAN}----------------------------------------------------${RESET}\n`);
