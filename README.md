# Budget App

![Microverse](https://img.shields.io/badge/Microverse-blueviolet)

> A mobile web application where you can manage your budget

Home page | Categories page
----------| ----------------
![Screenshot from 2021-12-04 13-28-14](https://user-images.githubusercontent.com/65068771/144707791-ac4b41f3-2af1-4945-8c65-627dc30c6fca.png) | ![Screenshot from 2021-12-04 18-55-27](https://user-images.githubusercontent.com/65068771/144717824-bbf42474-08bb-4926-9a83-edbd5a967e1b.png)


A mobile web application where you can manage your budget: you have a list of transactions associated with a category, so that you can see how much money you spent and on what.

## Built With

- Ruby on Rails
- PostgreSQL

## Video description
- Explanation: [Loom video](https://loom.com/share/9fb0fa00b7c147ad928599dbcdf16334)
- Highlight(review) : [Loom](https://www.loom.com/share/ff929bdcf9d740838e8d3b5eff1bb8be)

## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

- [Ruby](https://www.ruby-lang.org/en/)
- [Rails](https://gorails.com/)

### Setup

- Make sure you have Ruby on Rails set up properly on your computer
- Clone or download this repo on your machine

```sh
git clone git@github.com:andersonlebon/BudgetApp.git
~ cd BudgetApp

```

### Development Database

```sh
# Go Postgres shell user
 sudo -i -u postgres psql
```

```sh
 - rails db:setup
 and then run
-  rails db:migrate

```

```sh
# Create a user with password
create user "user_name" with password 'user_password';

```

### Install

```sh
bundle install
```

### Run

```sh
rails s
```

#### If you get an error run

```sh
bin/rails webpacker:install
and now run  `rails s`
```

### Test

```sh
rspec or rake
```

## Authors

👤 **Anderson Caleb**

- GitHub: [@Andersonlebon](https://github.com/andersonlebon)
- Twitter: [@BuyananaCaleb](https://twitter.com/BuyananaCaleb)
- LinkedIn: [Anderson Caleb](https://www.linkedin.com/in/anderson-caleb-915343209/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Microverse
- Original design idea by Gregoire Vella on [Behance](https://www.behance.net/gregoirevella).

## License

[MIT](./LICENSE)
