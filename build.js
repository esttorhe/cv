// ABOUTME: Generic CV build script using modern CSS stylesheet.
// ABOUTME: Usage: node build.js <input.md> [output.html] [--css path/to/style.css]

const fs = require('fs');
const path = require('path');
const marked = require('marked');
const mustache = require('mustache');
const cheerio = require('cheerio');

marked.setOptions({ breaks: true });

const args = process.argv.slice(2);
if (args.length === 0) {
    console.error('Usage: node build.js <input.md> [output.html] [--css path/to/style.css]');
    process.exit(1);
}

const cssIdx = args.indexOf('--css');
const cssFile = cssIdx !== -1 ? args[cssIdx + 1] : path.join(__dirname, 'assets', 'css', 'modern.css');
const filteredArgs = cssIdx !== -1
    ? args.filter((_, i) => i !== cssIdx && i !== cssIdx + 1)
    : args;

const sourceFile = path.resolve(filteredArgs[0]);
const outputFile = filteredArgs[1]
    ? path.resolve(filteredArgs[1])
    : sourceFile.replace(/\.md$/, '.html');

const sourceContents = fs.readFileSync(sourceFile, 'utf8');
const template = fs.readFileSync(path.join(__dirname, 'node_modules', 'markdown-resume', 'assets', 'templates', 'default.html'), 'utf8');
const css = fs.readFileSync(cssFile, 'utf8');

const resume = marked(sourceContents);
const $ = cheerio.load(resume);
const title = $('h1').first().text() + ' | ' + $('h2').first().text();

const rendered = mustache.render(template, {
    title: title,
    style: css,
    resume: resume,
    nopdf: true
});

fs.writeFileSync(outputFile, rendered);
console.log('Wrote html to: ' + outputFile);
