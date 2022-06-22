## init

```shell
git clone -o bb git@bitbucket.org:ponyatov/db.git ~/DB
cd ~/DB
git checkout --orphan shadow
```

## pushadow
```shell
git add -A
git push -v -u bb shadow
```
