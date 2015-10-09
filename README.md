# cap

How to deploy

```bash
git clone https://github.com/benubois/cap.git && cd cap
rsync -vaz /Users/ben/Desktop/script.sh cap.com:/tmp/ && ssh cap.com "/tmp/script.sh" 
cd .deploy && bundle
bundle exec cap production deploy
```
