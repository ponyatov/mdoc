# minimal project
#Clojure 

- https://github.com/radian-software/empty
- https://jfrog.com/knowledge-base/how-do-i-create-a-minimal-configuration-for-leiningen-2-5/

```shell
$ lein new empty hello
```
or manually:
```shell
$ touch project.clj 
$ mkdir src/hello
$ touch src/hello/core.clj
```

## `/project.clj`

```clojure
(defproject hello "0.0.1"
  :description "A Clojure project"
  :dependencies [[org.clojure/clojure "1.8.0"]]
  :main hello.core)
```

## `/src/hello/core.clj`
```clojure
(ns hello.core)
```

![[Clojure/gitignore]]
