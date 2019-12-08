# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

fantasy = Group.create(name: 'Фэнтези')
biography = Group.create(name: 'Биография')

terry = Author.create(name: 'Терри Праттчет', bio: 'Крутой мужик')
neil = Author.create(name: 'Нил Гейман', bio: 'Еще не читала, пришлось вписать его из за соавторства с Терри Пратчеттом')
linux = Author.create(name: 'Линус Торвальдс', bio: 'Рассказ скромного Фина')
feynman = Author.create(name: 'Ричард Фэйнман', bio: 'Еще не чиатала, но слышала что книга хороша')

[
  {title: 'Цвет волшебства', group: fantasy, authors: [terry], year: 1983, pages: 320},
  {title: 'Безумная звезда', group: fantasy, authors: [terry], year: 1986, pages: 368},
  {title: 'Творцы заклинаний', group: fantasy, authors: [terry], year: 1987, pages: 416},

  {title: 'Благие знамения', group: fantasy, authors: [terry, neil], year: 1990, pages: 288},

  {title: 'Just for Fun', group: biography, authors: [linux], year: 2001, pages: 288},
  {title: 'Вы, конечно, шутите, Мистер Фэйнман', group: biography, authors: [feynman], year: 1985, pages: 350},

].each { |attrs| Book.create(attrs) }
