Rake::Task['db:migrate:reset'].invoke

url = 'https://gigazine.net/news/rss_2.0/'
rss = Feedjira::Feed.fetch_and_parse(url)

feed = Feed.create!(title: rss.title, url: rss.feed_url)

rss.entries.each do |entry|
  feed.items.create!(title: entry.title, url: entry.url, published_at: entry.published)
end
