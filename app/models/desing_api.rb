require 'rubygems'
require 'httparty'


class Mashable
  include HTTParty
  base_uri 'http://mashable.com/stories.json'

  def mashable_authors
    notice = self.class.get('')
    noticias_mashable = []
    notice["hot"].each do |e|
      hash = {}
      hash["author"] = e["author"]
      hash["links"] = e["link"]
      hash["content"] = e["content"]
      noticias_mashable.push(hash)
    end
    return noticias_mashable
  end

  def mashable_titles
    notice = self.class.get('')
    noticias_mashable = []
    notice["hot"].each do |e|
      hash = {}
      hash["title"] = e["title"]
      hash["links"] = e["link"]
      hash["content"] = e["content"]
      noticias_mashable.push(hash)
    end
    return noticias_mashable
  end

  def mashable_dates
     notice = self.class.get('')
    noticias_mashable = []
    notice["hot"].each do |e|
      hash = {}
      hash["date"] = e["post_date"]
      hash["links"] = e["link"]
      hash["content"] = e["content"]
      noticias_mashable.push(hash)
    end
    return noticias_mashable
  end
end

class Reddit
  include HTTParty
  base_uri 'http://www.reddit.com/.json'

  def reddit_authors
      notice = self.class.get('')
      notice_reddit = []
      notice["data"]["children"].each do |e|
      hash = {}   
      hash["author"] = e["data"]["author"]
      hash["url"] = e["data"]["url"]
      notice_reddit.push(hash)
    end
    return notice_reddit
  end

  def reddit_titles
    notice = self.class.get('')
      notice_reddit = []
      notice["data"]["children"].each do |e|
      hash = {}   
      hash["title"] = e["data"]["title"]
      hash["url"] = e["data"]["url"]
      notice_reddit.push(hash)
    end
    return notice_reddit
  end

  def reddit_dates
    notice = self.class.get('')
      notice_reddit = []
      notice["data"]["children"].each do |e|
      hash = {}   
      hash["date"] = e["data"]["created"]
      hash["url"] = e["data"]["url"]
      notice_reddit.push(hash)
    end
    return notice_reddit
  end
end

class Digg
  include HTTParty
  base_uri 'http://digg.com/api/news/popular.json'

  def digg_authors
    notice = self.class.get('')
    notice_digg = []
    notice["data"]["feed"].each do |e|
      hash = {}
      hash["author"] = e["content"]["author"]
      hash["url"] = e["content"]["url"]
      hash["description"] = e["content"]["description"]
    notice_digg.push(hash)
    end
    return notice_digg
  end

   def digg_titles
    notice = self.class.get('')
    notice_digg = []
    notice["data"]["feed"].each do |e|
      hash = {}
      hash["title"] = e["content"]["title_alt"]
      hash["url"] = e["content"]["url"]
      hash["description"] = e["content"]["description"]
    notice_digg.push(hash)
    end
    return notice_digg
  end


   def digg_dates
    notice = self.class.get('')
    notice_digg = []
    notice["data"]["feed"].each do |e|
      hash = {}
      hash["date"] = e["date"]
      hash["url"] = e["content"]["url"]
      hash["description"] = e["content"]["description"]
    notice_digg.push(hash)
    end
    return notice_digg
  end
end


class DesingApi
  def self.mashable_authors
    @news = []
    mashable = Mashable.new
   @news.push(mashable.mashable_authors)
   return @news
  end

  def self.mashable_titles
    @news = []
    mashable = Mashable.new
   @news.push(mashable.mashable_titles)
   return @news
  end

  def self.mashable_dates
    @news = []
    mashable = Mashable.new
   @news.push(mashable.mashable_dates)
   return @news
  end

  def self.reddit_authors
    @news_reddit = []
    reddit = Reddit.new
    @news_reddit.push(reddit.reddit_authors)
    return @news_reddit
  end

  def self.reddit_titles
    @news_reddit = []
    reddit = Reddit.new
    @news_reddit.push(reddit.reddit_titles)
    return @news_reddit
  end

  def self.reddit_dates
    @news_reddit = []
    reddit = Reddit.new
    @news_reddit.push(reddit.reddit_dates)
    return @news_reddit
  end

  def self.digg_authors
    @news_digg = []
    digg = Digg.new
    @news_digg.push(digg.digg_authors)
    return @news_digg
  end

  def self.digg_titles
    @news_digg = []
    digg = Digg.new
    @news_digg.push(digg.digg_titles)
    return @news_digg
  end

  def self.digg_dates
    @news_digg = []
    digg = Digg.new
    @news_digg.push(digg.digg_dates)
    return @news_digg
  end
end
