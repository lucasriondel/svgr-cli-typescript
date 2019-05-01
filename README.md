# svgr-cli-typescript
Dumb shortcut to convert .svg files to .tsx typed react components as suggested in the svgr documentation.

## Usage

Run the package using `npx github:lucasriondel/svgr-cli-typescript [...args]`.

This will do the same as running 
`npx @svgr/cli --template typescript-template.js --ext tsx [...args]`

You can use every parameter [specified in the `@svgr/cli` documentation.](https://github.com/smooth-code/svgr/tree/master/packages/cli#usage)

## Examples

### Converting a single file

`npx github:lucasriondel/svgr-cli-typescript trust-me-its-working.svg -d ./`

### Converting a whole folder

`npx github:lucasriondel/svgr-cli-typescript assets/*.svg -d components/`