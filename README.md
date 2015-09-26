# Image Background Remover

This project rocks and uses MIT-LICENSE.

## How to install

```
gem install background_remover
```

## How to Configure

at config/initializers/background_remover.rb

```
BackgroundRemover.path = Rails.root.join("tmp")
```

## Test

```
BackgroundRemover.processor("http://www.trollheaven.com/wp-content/uploads/2015/02/esq-00-women-pp.jpg")
```

![http://www.trollheaven.com/wp-content/uploads/2015/02/esq-00-women-pp.jpg](http://www.trollheaven.com/wp-content/uploads/2015/02/esq-00-women-pp.jpg)
