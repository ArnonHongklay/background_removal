# Image Background Remover

This project rocks and uses MIT-LICENSE.

## How to install

```
gem install imgdrill
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

### Original 

![http://www.trollheaven.com/wp-content/uploads/2015/02/esq-00-women-pp.jpg](http://www.trollheaven.com/wp-content/uploads/2015/02/esq-00-women-pp.jpg)

### Finalize

![esq-00-women-pp](https://cloud.githubusercontent.com/assets/2420363/10118363/4bc42840-64a0-11e5-8d46-4e760e34950c.png)
