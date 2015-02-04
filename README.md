Gulp-runner
============

[![Build Status](https://travis-ci.org/hirtie-maxim/gulp-runner.svg)][travis]
[![Coverage Status](https://img.shields.io/coveralls/hirtie-maxim/gulp-runner.svg)][coveralls]
[![Gem Version](https://badge.fury.io/rb/gulp-runner.svg)][rubygems]

[travis]: https://travis-ci.org/hirtie-maxim/gulp-runner
[coveralls]: https://coveralls.io/r/hirtie-maxim/gulp-runner
[rubygems]: http://badge.fury.io/rb/gulp-runner

To you use the gulp-runner from command-line type:

`rake gulp:run[your_command_name]`

Or for running from rake files
```
Rake::Task["gulp:run"].invoke("your_command_name")
```

####Default commands
1. ```gulp:run``` - accepts command name
2. ```gulp:list``` - lists all yours gulp tasks

####Options
1. ```GulpRunner.root_path``` - default ```gulpfile.js```
2. ```GulpRunner.node_modules_path``` - default ```.```
3. ```GulpRunner.gulp_file_path``` - default ```Dir.pwd```