# 食事栄養管理サービス（仮）
## 概要
栄養管理や食事記録を行うためのRails製アプリケーションです。  
Dockerで構築されており、MySQLを使用したデータベースと連携します。

## 使用技術
- Ruby on Rails 7.x
- MySQL 8.0
- Docker

## 機能
- ユーザー登録（まずはパスワードなどなし）
- 日ごとの食事の登録
- 登録された食事から不足栄養素の確認
- 不足栄養素を満たすための推奨食材を検索
- 食材に対してつくったことのあるレシピの表示

## 環境構築方法（使い方）
```bash
git clone https://github.com/yourname/meal_management.git
cd meal_management
docker compose up --build

