(declare-project
  :name "bread"
  :description ```A vi & emacs inspired terminal text editor ```
  :version "0.0.0"
  :dependencies ["spork"])

(declare-executable
  :name "bread"
  :entry "bread/init.janet")
