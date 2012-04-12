CoffeeScript Util
=================

CoffeeScriptの勉強を兼ね、いろいろUtilityを書く。

arrayutil
---------

* combination:配列から指定した要素数を持った組み合わせを全て抽出するメソッド

注意）
Array.prototypeにメソッドを組み込みます。
Array.prototypeを汚染すべきではない場合、
  Array.prototype.combination = (k) -> combination(k, this)
をコメントアウトしてください

ライセンス
----------
Copyright &copy; 2012 nobuyuki.matsui@gmail.com
Licensed under the [GPL license Version 2.0][GPL]

[GPL]: http://www.gnu.org/licenses/gpl.html


