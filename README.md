Bundle
------

In your Rails 4 app's Gemfile add these lines:
```
gem 'bootstrap-sass', '~> 3.2.0'
gem 'autoprefixer-rails'
gem 'bootstrapped', path: '../bootstrapped'
```

Run bundle install.


Assets
------

Remove application.css.

Create application.css.sass and add:
```
@import bootstrap-sprockets
@import bootstrap
@import customized
@import fixed-navbar
```

In application.js add after you load jquery
```
//= require bootstrap-sprockets
```

Be sure to restart your server.