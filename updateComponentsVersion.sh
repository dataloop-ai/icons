
#!/bin/bash

git config pull.rebase false
git pull

sleep 0.5
npm install @dataloop-ai/components@latest
npm i

sleep 0.5
git add .

sleep 0.5
A=$(date +"%m-%d-%y %r")
git commit -m "NEW COMPONENTS VERSION - $A"

sleep 0.5
npm version patch
git push --follow-tags

echo 'Changes committed and new version published'
