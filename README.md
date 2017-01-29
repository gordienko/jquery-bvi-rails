Button visually impaired Jquery plugin for Ruby on Rails asset pipeline
=======================================================================


Installation
------------

Add this line to your application's Gemfile:

    gem 'jquery-bvi-rails'

And then execute:

    $ bundle

Add this line to `app/assets/stylesheets/application.css`:

    *= require jquery.bvi

Add this line to `app/assets/javascripts/application.js`:

    //= require jquery.bvi

And install config file:

rails generate jquery_bvi_rails:install


Configure
---------

You can config config/initializers/jquery_bvi_rails.rb to choose which site do you want to use:

```ruby
Jquery::Bvi::Rails.configure do |config|
  config.bvi_panel = 1
  config.bvi_panel_bg = "white"
  config.bvi_panel_font_size = 18
  config.bvi_panel_letter_spacing = "normal"
  config.bvi_panel_line_height = "normal"
  config.bvi_panel_img = 1
  config.bvi_panel_img_x_y = 1
  config.bvi_panel_reload = 0
  config.bvi_panel_no_work = 0
  config.bvi_panel_text = "Версия для слабовидящих"
  config.bvi_panel_close_text = "Обычная версия сайта"
  config.bvi_fix_panel = "1"
  config.bvi_ver = "Button visually impaired version 1.0.3"
  config.bvi_close_class_and_id = ""
  config.bvi_text_bg = "#e53935"
  config.bvi_text_color = "#ffffff"
  config.bvi_size_text = 14
  config.bvi_size_icon = 30
  config.bvi_play = 1
end
```

For more information about options, please visit the original [site].

Usage
-----

Аdd similar code to your view, for example `app/views/layouts/application.html.haml`:

```haml
= bvi_link_tag

```


Contributing
------------

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

### Version policy

This gem version number is in form of **X.Y.Z.P**, where **X.Y.Z** is a version of original [plugin] and **P** is a gem-specific patch level.

[plugin]: https://github.com/gordienko/jquery-bvi-rails
[author]: https://github.com/gordienko
[site]: http://bvi.isvek.ru 
