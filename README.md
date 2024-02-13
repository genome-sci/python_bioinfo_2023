# 2023年度先進ゲノム支援(PAGS)、DDBJ合同 中級者情報解析講習会

## 概要
- 日時：
- 1日目：2024年2月13日（火）12：10 ～ 18:00
- 2日目：2024年2月14日（水） 9：20 〜 18:00
- 会場：
    オンライン開催(Zoom webinar)

## スケジュール
【2月13日：1日目】	
- 12：10～12：20　講習会説明
- 12：20～13：50　[1 Jupyter notebook、文字列処理/ファイルの読み書き/正規表現　千葉大　高橋弘喜](https://github.com/genome-sci/python_bioinfo_2023/tree/main/1)
- 14：00～15：30　[1-2 クラスの利用、Biopythonを用いた処理　遺伝研　谷澤靖洋](https://github.com/genome-sci/python_bioinfo_2023/tree/main/1-2)
- 15：40～16：10　[1-3 Numpy　遺伝研　東光一](https://github.com/genome-sci/python_bioinfo_2023/tree/main/1-3)
- 16：10～17：00　[1-4 表形式ファイルの処理（Pandas）　遺伝研　坂本美佳](https://github.com/genome-sci/python_bioinfo_2023/tree/main/1-4)
- 17：00～18：00　質疑応答

【2月14日：2日目】
- 9：20〜10：50　[2-1 視覚化 (matplotlib, seaborn)　遺伝研　黒川真臣](https://github.com/genome-sci/python_bioinfo_2023/tree/main/2-1)
- 11：00〜12：30　[2-2 統計的仮説検定　遺伝研　森宙史](https://github.com/genome-sci/python_bioinfo_2023/tree/main/2-2)
- 12：30〜13：20　昼食休憩
- 13：20〜14：50　[2-3 Pythonを用いたシングルセルRNA-seq解析（基礎）　遺伝研　望月孝子](https://github.com/genome-sci/python_bioinfo_2023/tree/main/2-3)
- 15：00～17：00　[2-4 Pythonを用いたシングルセルRNA-seq解析（発展）　遺伝研　東光一](https://github.com/genome-sci/python_bioinfo_2023/tree/main/2-4)
- 17：00～18：00　質疑応答


## プログラム実行環境の準備

### miniconda 仮想環境へのインストール
miniconda は[公式ウェブサイト](https://docs.anaconda.com/free/miniconda/)の手順等に従ってインストールしてください。miniconda のかわりに Anaconda、miniforge、micromamba 等を使っても構いません。

- 仮想環境の作成  
`pags2023` という名称で仮想環境を作成し、Python 3.11 をインストールします。
```
conda create -n pags2023 python=3.11
# 仮想環境の有効化
conda activate pags2023
```
仮想環境から抜けるには `conda deactivate` を実行します。

- モジュールのインストール  
仮想環境 `pags2023` を有効化した状態で行なってください。
```
conda install -c conda-forge jupyter
conda install -c bioconda biopython bcbiogff
conda install -c conda-forge matplotlib-venn
conda install -c conda-forge scanpy python-igraph leidenalg
conda install -c conda-forge scvi-tools
conda install -c bioconda scvelo
conda install -c conda-forge -c bioconda cellrank
conda install -c conda-forge scikit-misc
```



### Docker を利用する場合
```
# ソースコード取得
https://github.com/genome-sci/python_bioinfo_2023.git

# ディレクトリに移動
cd python_bioinfo_2023

# コンテナイメージをビルド (pags:2023という名称のイメージを作成します)
docker build -t pags:2023 .

# jupyter notebook 起動
docker run -it --rm -v $PWD:/python_bioinfo_2023 -p 8888:8888 pags:2023

# コンテナ内ででコマンドを実行する
docker run -it --rm -v $PWD:/python_bioinfo_2023 -p 8888:8888 pags:2023 bash
```

Jupyter notebook を開くには起動後、ウェブブラウザから http://localhost:8888 を開いてください。
