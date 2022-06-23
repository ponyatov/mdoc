```shell
 git clone -o bb git@bitbucket.org:ponyatov/wp.git ~/WP
 cd ~/WP
 git checkout --orphan shadow
 ln -fs ~/rc rc
 ln -fs ~/metaL/gen.py metaL.py
 git add -A
 git commit -a -m "."
 git push -v -u bb shadow
 ./rc
 ```
 ```shell
 ./metaL
 mv WP/bin ./
 mv WP/doc ./
 mv WP/lib ./
 mv WP/src ./
 mv WP/tmp ./
 mv WP/inc ./
 mv WP/config ./
 mv WP/* ./
 
 meld . WP &
 ```
 