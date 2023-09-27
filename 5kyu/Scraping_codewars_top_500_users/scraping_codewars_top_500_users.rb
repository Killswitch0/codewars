# DESCRIPTION:
#   You should get and parse the html of the codewars leaderboard page.
#
#     You can use Nokogiri(Ruby) or BeautifulSoup(Python) or CheerioJS(Javascript).
#
#     For Javascript: Return a Promise resolved with your 'Leaderboard' Object!
#
# Note: Use the Overall leaderboard table.
#   Return a 'Leaderboard' object with a position property.
#   Leaderboard#position should contain 500 'User' objects.
#
#
# Leaderboard#position[i] should return the ith ranked User(1 based index).
#   Each User should have the following properties
#   User#name    # => the user's username, not their real name
#   User#clan    # => the user's clan, empty string if empty clan field
#   User#honor   # => the user's honor points as an integer
#
#
# Ex:
#   an_alien = leaderboard.position[3]   # => #<User:0x3124da0 @name="myjinxin2015", @clan="China Changyuan", @honor=21446>
#   an_alien.name                        # => "myjinxin2015"
#   an_alien.clan                        # => "China Changyuan"
#   an_alien.honor                       # => 21446

require 'nokogiri'
require 'open-uri'

URL = 'https://www.codewars.com/users/leaderboard'

# codewars leaderboard page doesn't specify <meta charset="utf-8">
# for nokogiri, make sure to force utf-8. ex: Nokogiri::HTML(open(URL), nil, 'UTF-8')
# reference: http://www.nokogiri.org/tutorials/parsing_an_html_xml_document.html#encoding


class Leaderboard
  attr_reader :users

  def initialize
    @users = {}
    create_users
  end

  def position
    @users
  end

  private

  def create_users
    doc = Nokogiri::HTML.parse(open(URL), nil, 'UTF-8')

    doc.css('tr[data-username]').each_with_index do |user, i|
      user_name = user['data-username'] || ''
      user_clan = user.css('td[3]').text || ''
      user_honor = user.css('td[4]').text.gsub(',', '_').to_i || 0

      @users[i + 1] = Struct.new(:name, :clan, :honor).new(user_name, user_clan, user_honor)

      break if @users.count == 500
    end
  end
end

def solution
  Leaderboard.new
end



leaderboard = solution

leaderboard.position.size # 500
leaderboard.position[1].name