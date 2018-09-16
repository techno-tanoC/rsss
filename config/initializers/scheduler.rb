scheduler = Rufus::Scheduler.new

span = Rails.env.production? ? '1h' : '5m'

scheduler.every span do
  Feed.all.each do |feed|
    feed.fetch_and_update
  end
end
