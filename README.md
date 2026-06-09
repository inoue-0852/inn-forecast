# inn-forecast

県内旅館の宿泊実績データと観光関連オープンデータを利用し、宿泊者数を予測するPoC（Proof of Concept）です。

このプロジェクトは、Google Colab 上で作成した Jupyter Notebook を、WSL 環境へ移植し、さらに RubyPyMill を利用して業務ワークフローへ組み込む実験として作成しました。

## 背景

AIやデータサイエンスの世界では、Pythonのエコシステムを活用しない手はありません。

一方で、PoCとして作成した Notebook をそのまま業務へ組み込むことは簡単ではありません。

本プロジェクトでは、

* Google Colab
* Jupyter Notebook
* GitHub
* WSL
* RubyPyMill

を組み合わせることで、  

**「Pythonで答えを見つけ、Rubyがそれを社会実装する」**

というアプローチを試しています。

## リポジトリ構成（PoC → MVP → 業務化）

```text
inn-forecast/
├── Datas/      # 入力データ
├── notebook/   # Jupyter Notebook
├── outputs/    # 出力結果
├── params/     # 実行パラメータ(JSON)
├── scripts/    # RubyPyMill実行スクリプト
├── logs/       # 実行ログ
└── README.md
```

## 実行環境

* Ubuntu (WSL)
* Python 3.12
* Jupyter Notebook
* Ruby
* RubyPyMill

## Notebook実行

VSCode や Jupyter から直接実行できます。

```bash
jupyter notebook
```

## RubyPyMill実行

```bash
ruby scripts/rpymill_forecast.rb
```

Notebook内のタグを指定して実行することで、必要な処理のみを業務ワークフローへ組み込むことができます。

## 出力例

実行すると以下の成果物が生成されます。

```text
outputs/
├── actual_2026.csv
├── forecast_2026.csv
├── 2026_prediction_graph.png
└── out_preprocess.ipynb
```

## このプロジェクトで試したこと

* Google Colabで作成したPoCの移植
* WSL上での再実行
* GitHubによる管理
* RubyPyMillによるNotebook実行
* タグ指定による部分実行
* JSONパラメータ注入
* PoCからMVPへの移行

## メッセージ

AI時代にはPoCを作ること自体は難しくなくなります。

一方で、

* 再実行できること
* 引き継げること
* 継続運用できること

の重要性はむしろ高まります。

このリポジトリは、

「PoCを捨てずに業務へつなぐ」

ための小さな実験です。

---

Pythonで答えを見つける。

Rubyがそれを社会実装する。

是非お試し下さい！

## 環境節制

git clone ...
cd inn-forecast

### Ruby
Requirements

- Python 3.12+
- Ruby 3.2+
- RubyPyMill 0.3.1+

### Python
python -m venv .venv
source .venv/bin/activate

pip install -r requirements.txt

### 実行

ruby scripts/rpymill_forecast.rb
