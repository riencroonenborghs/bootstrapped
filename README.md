# Boostrapped

Boostrapped is a gem with a set of helpers to make bootstrapping your Rails app a lot faster.

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


### Assets

Remove application.css.

Create application.css.sass and add:
```
@import bootstrap-sprockets
@import bootstrap
@import customized
@import fixed-navbar
```

In application.js, right after require jquery, add:
```
//= require bootstrap-sprockets
```

Restart your server.


## Helpers

All helpers can have an optional id, style and/or class.