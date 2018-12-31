# Background Removal
Short description and motivation.

## Usage
How to use my plugin.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'background-removal'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install background-removal
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## How to Configure

at config/initializers/background_removal.rb

```
BackgroundRemoval.path = Rails.root.join("tmp")
```

## Test

```
BackgroundRemoval.processor("http://www.trollheaven.com/wp-content/uploads/2015/02/esq-00-women-pp.jpg")
```

### Original

![http://www.trollheaven.com/wp-content/uploads/2015/02/esq-00-women-pp.jpg](http://www.trollheaven.com/wp-content/uploads/2015/02/esq-00-women-pp.jpg)

### Finalize

![esq-00-women-pp](https://cloud.githubusercontent.com/assets/2420363/10118363/4bc42840-64a0-11e5-8d46-4e760e34950c.png)
