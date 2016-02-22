# Devise::Uikit::Views

このgemはRailsのログイン認証管理を行う際によく利用されるdeviseのviewにUIkitを適用するgemです。  
このgemのソースのほとんどはこちらを参考にしています。  
[devise-bootstrap-views](https://github.com/hisea/devise-bootstrap-views)  

あと、UIkitのリポジトリはこちらです。  
[UIkit](https://github.com/uikit/uikit)  

## インストール

gemファイルに以下のコードを追加してください。

```ruby
gem 'devise-uikit-views'
```

そのあとはbundle installをします。

```ruby
$ bundle install
```

アッセトパイプラインで使用するためにapp/assets/stylesheets/application.cssに以下のコードを記述します。
SASSとLESSで違うので気をつけてください。

### SASS

```ruby
*= require devise_uikit_views
```

### LESS

```ruby
*= require devise_uikit_views_less
```


## カスタマイズ

参考元と同じく以下のコマンドを入力することで言語ファイルやviewのファイルの生成ができます
カスタマイズをしたい場合はこちらのコマンドを入力してください。

``` sh
# 原語ファイル
rails g devise:views:locale ja
```

``` sh
# viewファイル
rails g devise:views:uikit_templates
```

## Contributing

バグとかプルリクエストとかは大歓迎ですのでよろしくお願いします。 https://github.com/eskey/devise-uikit-views.
