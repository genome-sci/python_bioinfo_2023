# 2-1 視覚化（matplotlib, seaborn） 

## 担当：国立遺伝学研究所　黒川真臣

## pythonの視覚化ツールについて
python言語自体には視覚化機能は備わっていない。そのため、視覚化のためのライブラリを利用する必要がある。


![ロゴ](sources/logos.png)


pythonの視覚化ライブラリは数多くありますが、本講習では「matplotlib」と「seaborn」について学ぶ。

matplotlibはpython視覚化ツールの定番と言えるほど広く利用されているライブラリである。matplotlibの特徴は**記述した内容がそのまま図になる**と言えるだろう。そのため、それぞれのコードの役割がわかりやすくはじめに学ぶライブラリとしても優れている。一方、この特徴は**複雑な図を作るには複雑なコードが必要**というデメリットでもある。

このデメリットを解消してくれるのがseabornである。matplotlibとは全く別のライブラリというわけではなく、実態としては**matplotlibを内部的に利用**するラッパーライブラリである。

その他、インタラクティブ（拡大縮小や範囲の選択などが可能）な視覚化ツールとしてpyplotやBokehといったライブラリも人気がある。特にWEBページに埋め込んだりして利用すると非常に効果的である。しかしながら、pythonで学術論文に載せるグラフを作る場合には、matplotlibとseabornさえ使えれば基本的に困ることはない。


## 本講習の内容
本講習は、２つのノートブックを使う。
1. [visualization_1.ipynb](visualization_1.ipynb)

    matplotlib, seabornの基本的なグラフの作成

2. [visualization_1.ipynb](visualization_2.ipynb)

    遺伝子発現データを用いた実践

## 謝辞
本講習は、2019年度（農研機構・孫建強）、2022年度（遺伝研・望月孝子）の先進ゲノム支援情報解析講習会の資料を元に作成させていただきました。

## 参考資料
本資料の作成にあたって特に役立った資料

* 独習 Pythonバイオ情報解析（羊土社）  
    先進ゲノム解析研究推進プラットフォームで作成した書籍
* Pythonデータサイエンスハンドブック（オライリー）  
    英語版のデータが公開されている（https://jakevdp.github.io/PythonDataScienceHandbook/）
* matplotlibのチュートリアル（https://matplotlib.org/stable/tutorials/index）
* seabornのチュートリアル（https://seaborn.pydata.org/tutorial.html）