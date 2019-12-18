<!--
This is the first project of the Ruby on Rails section of the Microverse course	*** Thanks for checking out this README Template. If you have a suggestion that would
<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://www.microverse.org/">
    <img src="./doc/microverse.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Members Only</h3>

  <p align="center">
  In this project we built an exclusive clubhouse where the members can write embarrassing posts about non-members. Inside the clubhouse, members can see who the author of a post is but, outside, they can only see the story and wonder who wrote it. <br />
  </p>
</p>

<!-- ABOUT THE PROJECT -->

### Built With
This progam was made using this technologies

* [Ruby on Rails](https://www.ruby-lang.org/en/)
<!-- * [Heroku](https://heroku.com/) -->
* [Rubocop](https://github.com/rubocop-hq/rubocop)
* [Stickler](https://stickler-ci.com/)



## Getting Started
To get a local copy up and running follow these simple example steps.
### Prerequisite Instalations
* Ruby
* Rails
You can easily install Ruby on your Linux computer by using [Homebrew](https://docs.brew.sh/) and [Chruby](https://github.com/postmodern/chruby)
```sh
brew install chruby
brew install ruby-install
ruby-install ruby
```
After that make sure to install rails simply by writting ```gem install rails``` on the console.
Check that rails was installed by writting ```rails -v``` and you should get an output similar to ```Rails 4.2.4``` with your rails version.

### Installation

Clone this repo ```git clone https://github.com/jairjy/Microverse-506-Members-Only.git```
Then intall the required gems with ```bundle install``` followed by ```bundle update```

Migrate the database to your machine with ```rails db:migrate```

You can test the API in the rails console. Access it with ```rails console```

## Usage

Run the server by using the console, in the root directory of the repository, execute the command:

```sh
rails server
```

Once the server is running, create a new user by accessing to the url: http://localhost:3000/signup

After that, login using the email and password of the created using in the url: http://localhost:3000/login

To create a new post, use this url: http://localhost:3000/posts/new

Finally, you can see the posts that the members have submitted by visiting this url: http://localhost:3000 . Notice that only the logged members can see the author of such posts.

## License

Distributed under the MIT License. See `LICENSE` for more information.



<!-- CONTACT -->
## Contact


* Sarah Uryelah: [Github](https://github.com/uryela), [Twitter](https://twitter.com/uryela
)

* Jair Jaramillo: [Github](https://github.com/jairjy), [Twitter](https://twitter.com/jairjy)

Project Link: [Members Only](https://github.com/jairjy/Microverse-506-Members-Only)

<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements
* [Microverse](https://www.microverse.org/)
* [The Odin Project](https://www.theodinproject.com/courses/ruby-on-rails/lessons/authentication)
* [Rails Guide](https://guides.rubyonrails.org)
