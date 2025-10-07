FROM ruby:3.2

# 必要なパッケージのインストール
RUN apt-get update -qq && \
    apt-get install -y build-essential default-libmysqlclient-dev nodejs curl

# Node.jsに含まれるcorepackを有効化してYarnを使えるようにする
RUN corepack enable

# 作業ディレクトリを作成
WORKDIR /app

# GemfileとGemfile.lockを先にコピー（キャッシュを効かせるため）
COPY Gemfile Gemfile.lock ./

# BundlerとGemをインストール
RUN gem install bundler && bundle install

