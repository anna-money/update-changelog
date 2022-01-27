# Update changelog action

Generates a git changelog based on https://github.com/vaab/gitchangelog/

## Inputs

### changelog-template-file

Optional param

Template file for the changelog. Available values are "short.tpl" or "long.tpl". Also it can be an absolute path to [mustache template](https://github.com/vaab/gitchangelog/#mustache).

### changelog-file

Required param
Path to file where to put generated changelog to. The file will be overridden

### changelog-start-tag

Required param

Git tag or commit hash to start parsing changelog from