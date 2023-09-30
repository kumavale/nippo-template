# 日報テンプレート

[![Create today's report file](../../actions/workflows/diary.yml/badge.svg)](../../actions/workflows/diary.yml)
[![license](https://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)

日報の作成をお手伝いします！

## 使い方

1. [ここをクリック](https://github.com/new?template_name=nippo-template&template_owner=kumavale) してリポジトリを作成

2. `template.md` に日報のテンプレートを作成

3. 初回は [Actions のページ](../../actions/workflows/diary.yml) から「Run workflow」を手動で実行

## 拡張

### 日報ファイル作成

Actions の `schedule` を利用してデフォルトでは毎日0時にその日の日報ファイルを作成します。  
それを変更したい場合は、[POSIX cron syntax](https://pubs.opengroup.org/onlinepubs/9699919799/utilities/crontab.html#tag_20_25_07) に従って [diary.yml](./.github/workflows/diary.yml#L5) を修正してください。

※ 時間の指定は UTC になります

#### 例：月～金の0時に作成

```
- cron: "0 15 * * 0-4"
```

### 日報ファイル名

デフォルトでは `date +"%Y/%m/%Y-%m-%d.md"` のフォーマットで作成されます。  
それを変更したい場合は、[diary.sh](./scripts/diary.sh) を適宜修正してください。

#### 例：名前_日付.md

```
date +"%Y/%m/kumavale_%Y-%m-%d.md"
```

### デプロイ

[mdBook](https://github.com/rust-lang/mdBook) 等を利用して静的サイトとしてデプロイすることも可能です。

## コントリビューション

Issue, Pull requests, Discussions を歓迎しています！
