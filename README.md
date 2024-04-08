
# Gtimer

Gtimerは、ブロック内の処理時間を計測するためのライブラリです。

## インストール

RubyGemsを使用してインストールできます：

```sh
gem install gtimer
```

または、Gemfileに以下の行を追加して、Bundlerを使用してインストールすることもできます：

```ruby
gem 'gtimer'
```

## 使用方法

Gtimerを使用するには、まずgemをrequireします：

```ruby
require 'gtimer'
```

次に、`Gtimer::Timer.measure` メソッドを使用して、ブロック内の処理時間を計測します：

```ruby
elapsed_time = Gtimer::Set.timer do
 # ここに計測したい処理を書く
end

puts "処理時間: #{elapsed_time}秒"
```

## 実行例

以下は、`Gtimer::Set.timer` メソッドを使用して、配列の要素を2倍にする処理の時間を計測する例です：

```ruby
require 'gtimer'

array = (1..1000).to_a

elapsed_time = Gtimer::Set.timer do
 array.map! { |x| x * 2 }
end

puts "配列の要素を2倍にする処理の時間: #{elapsed_time}秒"
```
例1: sleepメソッドの実行時間の計測

```
require 'gtimer'

elapsed_time = Gtimer::Set.timer do
    sleep(1)
end

puts "sleep(1)の実行時間: #{elapsed_time}秒"
```
例2: 配列の要素を2倍にする処理の時間の計測
```
require 'gtimer'

array = (1..1000).to_a

elapsed_time = Gtimer::Set.timer do
    array.map! { |x| x * 2 }
end

puts "配列の要素を2倍にする処理の時間: #{elapsed_time}秒"
```
例3: ファイルの読み込み時間の計測
```
require 'gtimer'

elapsed_time = Gtimer::Set.timer do
    File.read('large_file.txt')
end

puts "large_file.txtの読み込み時間: #{elapsed_time}秒"
```


## 貢献

バグレポートやプルリクエストは、GitHubのリポジトリに投稿してください。

## ライセンス

このプロジェクトはMITライセンスの下で提供されています。詳細は `LICENSE` ファイルを参照してください。
