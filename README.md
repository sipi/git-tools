# GIT TOOLS

git-tools currently provides two helper commands:

## git-tools status
Open an interactive session with following steps:
  1. displays ```git status``` then prompts to continue or not,
  2. for each modified file, display a diff then prompts to add, patch, checkout or ignore
  3. prompts to commit

## git-tools substatus
Executes ```git status --short``` on all subdirectories of the current directory.