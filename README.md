# foundation-boilerplate

- - -

_If you want support, please use [foundation forum](http://foundation.zurb.com/forum) with the `foundation-boilerplate` tag and not the GitHub issues tracker. Only post an issue here if you think you discovered a bug or have a feature request._

- - -

## About

[foundation-boilerplate](http://flexbox.github.io/foundation-boilerplate/) is a collection of useful starter kits to help you prototype with foundation framework faster.
This application is lovely handcrafted with the help of [Middleman](http://middlemanapp.com) and includes my favorite front-end tools.

## About Middleman

Middleman is a static site generator built in Ruby. This makes it a great fit for projects that may end up as a Ruby on Rails app. Its minimalistic structure makes it very easy to work with, and includes support for deploying to Github Pages.

###### Preprocessing

- [Slim](http://slim-lang.com) *[for html]*
- [Sass](http://sass-lang.com) *[for css]*
- [CoffeeScript](http://coffeescript.org) *[for js]*

###### Tools

- [Bower](http://bower.io) *[js package management]*
- [Foundation](http://foundation.zurb.com/) *[sass helpers/mixins]*
- [Middleman Live Reload](https://github.com/middleman/middleman-livereload) *[Reloads the page when files change]*
- [GitHub Pages](http://pages.github.com) *[deployment/hosting]*

## Getting Started

Set up your project in your code directory

    git clone git@github.com:flexbox/foundation-boilerplate.git your-project-folder
    cd your-project-folder
    git remote rm origin
    git remote add origin your-git-url


Install dependencies

    bundle install
    bower install

Launch the server on your machine

    middleman server

Deploy to Github Pages

    rake publish

## Architecture

Stylesheets, fonts, images, and JavaScript files go in the `/source/assets/` directory.
Vendor stylesheets and JavaScripts should go in each of their `/bower_components/` directories.

## Demo

→ [http://flexbox.github.io/foundation-boilerplate/](http://flexbox.github.io/foundation-boilerplate/)

## Contributing

If you have problems, please create a [GitHub Issue](https://github.com/flexbox/foundation-boilerplate/issues).

Have a fix or want to add a feature? [Pull Requests](https://github.com/flexbox/foundation-boilerplate/pulls) are welcome!

## Author

| [![twitter/_flexbox](https://gravatar.com/avatar/66ecc55f1bc2e5863eb516ee6f20794e?s=70)](https://twitter.com/_flexbox "Follow @_flexbox on Twitter") |
|---|
| [David Leuliette](http://davidl.fr/) |

## License

This project is free software, and may be redistributed under [GNU/GPL license](LICENSE.md).
