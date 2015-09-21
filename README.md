# Image Background Remover

This project rocks and uses MIT-LICENSE.

## How to Configure

```
BackgroundRemover.path          = Rails.root.join("tmp")
BackgroundRemover.path_original = Rails.root.join("tmp/original")
BackgroundRemover.path_finalize = Rails.root.join("tmp/finalize")
```

## Test

```
BackgroundRemover.loader("http://www.trollheaven.com/wp-content/uploads/2015/02/esq-00-women-pp.jpg")
```

http://www.trollheaven.com/wp-content/uploads/2015/02/esq-00-women-pp.jpg
