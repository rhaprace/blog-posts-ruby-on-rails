Post.destroy_all

Post.create!(
  title: "Welcome to My Blog",
  content: "This is my first blog post! I'm excited to share my thoughts and experiences with you. This post was published yesterday, so it should be visible on the index page.",
  publish_at: 1.day.ago
)

Post.create!(
  title: "Getting Started with Ruby on Rails",
  content: "Ruby on Rails is an amazing web framework that makes building web applications fast and enjoyable. In this post, I'll share some tips for beginners getting started with Rails. This was published a few hours ago.",
  publish_at: 3.hours.ago
)

Post.create!(
  title: "The Power of Scheduled Publishing",
  content: "One of the great features of this blog is scheduled publishing. You can write posts in advance and schedule them to be published at a specific date and time. This post was published just now!",
  publish_at: Time.current
)

Post.create!(
  title: "Future Post: Coming Tomorrow",
  content: "This post is scheduled to be published tomorrow. You won't see it on the index page until tomorrow arrives! This demonstrates the scheduled publishing feature.",
  publish_at: 1.day.from_now
)

Post.create!(
  title: "Next Week's Update",
  content: "This post is scheduled for next week. It's already written and saved in the database, but it won't appear on the blog until the scheduled time arrives.",
  publish_at: 1.week.from_now
)

puts "Created #{Post.count} posts:"
puts "- Published posts: #{Post.published.count}"
puts "- Scheduled posts: #{Post.scheduled.count}"
