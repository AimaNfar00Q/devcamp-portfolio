3.times do |topic|
	Topic.create!(
		title: "Topic #{topic}"
		)
end
puts "3 Topic created"

#11

10.times do |blog|
Blog.create!(
	title: "My BLog Post #{blog}",
	body: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.  ",
	topic_id: Topic.last.id
	)
end
puts "10 blog posts created"

5.times do |skill|
Skill.create(
title: "Rails #{skill}",
percent_utilized: 15
)
end
puts "5 skills created"

8.times do |portfolio_item|
Portfolio.create(
title: "Portfolio title #{portfolio_item}",
subtitle: "Ruby on Rails",
body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
main_image: "https://via.placeholder.com/600x400",
thumb_image: "https://via.placeholder.com/350x150"
)
end
1.times do |portfolio_item|
Portfolio.create(
title: "Portfolio title #{portfolio_item}",
subtitle: "Angular",
body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
main_image: "https://via.placeholder.com/600x400",
thumb_image: "https://via.placeholder.com/350x150"
)
end
puts "9 Portfolio Items created"

3.times do |technology|
	Portfolio.last.technologies.create!(
     name: "Technology #{technology}",
     portfolio_id: Portfolio.last.id
		)
end
puts "3 technologies created"