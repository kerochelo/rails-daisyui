#!/usr/bin/env bash
set -o errexit

bundle install
yarn install
yarn build
bundle exec rake assets:precompile
bundle exec rails db:migrate
