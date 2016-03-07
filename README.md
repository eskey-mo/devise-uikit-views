# Devise::Uikit::Views

このgemはRailsのログイン認証管理を行う際によく利用されるdeviseのviewにUIkitを適用するgemです。  
このgemのソースのほとんどはこちらを参考にしています。  
[devise-bootstrap-views](https://github.com/hisea/devise-bootstrap-views)  

あと、UIkitのリポジトリはこちらです。  
[UIkit](https://github.com/uikit/uikit)  

## スクリーンショット
V2.0.0  
![Screenshot](https://raw.githubusercontent.com/eskey-mo/devise-uikit-views/master/screenshot_v2.png)

V1.0.0  
![Screenshot](https://raw.githubusercontent.com/eskey-mo/devise-uikit-views/master/screenshot_v1.png)

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

### 2.0.0から必要な記述
エラー出力タグ(field_error_proc)が出ると表示崩れするのでconfig/application.rbにいかの記述を追記してください

```ruby
config.action_view.field_error_proc = proc { |input, instance| input }
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
