# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ReservedWord.create!([
{id: 1, word: "nil"},
{id: 2, word: "true"},
{id: 3, word: "false"},
{id: 4, word: "not"},
{id: 5, word: "or"},
{id: 6, word: "and"},
{id: 7, word: "BEGIN"},
{id: 8, word: "END"},
{id: 9, word: "begin"},
{id: 10, word: "end"},
{id: 11, word: "do"},
{id: 12, word: "then"},
{id: 13, word: "yield"},
{id: 14, word: "rescue"},
{id: 15, word: "ensure"},
{id: 16, word: "class"},
{id: 17, word: "module"},
{id: 18, word: "def"},
{id: 19, word: "defined?"},
{id: 20, word: "alias"},
{id: 21, word: "undef"},
{id: 22, word: "super"},
{id: 23, word: "self"},
{id: 24, word: "return"},
{id: 25, word: "while"},
{id: 26, word: "until"},
{id: 27, word: "for"},
{id: 28, word: "in"},
{id: 29, word: "break"},
{id: 30, word: "next"},
{id: 31, word: "redo"},
{id: 32, word: "retry"},
{id: 33, word: "case"},
{id: 34, word: "when"},
{id: 35, word: "if"},
{id: 36, word: "unless"},
{id: 37, word: "else"},
{id: 38, word: "elsif"},
{id: 39, word: "__LINE__"},
{id: 40, word: "__FILE__"},
{id: 41, word: "__ENCODING__"}
])

Admin.create!([
  {email: ENV['ADMIN_EMAIL'], password: ENV['ADMIN_PASSWORD']
  }])