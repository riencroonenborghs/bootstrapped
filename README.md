# Boostrapped

[Bootstrap](http://getbootstrap.com/) is pretty neat framework for building web apps. To get something up and running you need to write a good bunch of HTML though. This gem aims to make your life a tad easier. 

It's geared towards Rails, with lots of helpers to facilitate the creation of rows, grids, modals, list, panels, tables, tabs and so on.


## Setup

### Bundle

In your  Gemfile add:
```
gem 'bootstrap-sass', '~> 3.2.0'
gem 'autoprefixer-rails'
gem 'bootstrapped', github: 'riencroonenborghs/bootstrapped'
```

Don't forget to 
```
bundle install
```


### Assets: Stylesheets

Remove application.css.

Create application.css.sass and add:
```
@import bootstrap-sprockets
@import bootstrap
```

If you want to have a fixed top navigation bar, add:
```
@import fixed-navbar
```

I customize my rails app a bit. All bootstrap related customization are in customized.sass.

```
@import customized
```


### Assets: Javascript

In application.js, right after require jquery, add:
```
//= require bootstrap-sprockets
```


### Controllers

ApplicationController needs one line to make it all work:

```
helper Bootstrapped::Engine.helpers  
```

You're good to go now.


## Helpers

All helpers can have an optional id, style and/or class.