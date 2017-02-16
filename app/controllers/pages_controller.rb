class PagesController < ApplicationController
  def home
    @posts = Blog.all
    @skills = Skill.all
  end

  def about
  end

  def contact
  end
  
  def tweet_news
    @tweets = Socials.twitter_search
  end
end
