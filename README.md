# HERASUFY 

HERASUFY - a link shortening service (from **減らす**: reduce, shorten)

## Installation prerequisites:

- Ruby 3.2.2
- Postgres 9.3
- Specify db user and password in `config/database.yml` if necessary

## Installation process: 

Install dependencies: 
```
bundle install
```

Create & migrate database:
```
rake db:prepare
```

Start the development server & tailwindcss watcher:
```
./bin/dev
```

Test with:
```
rails test
```