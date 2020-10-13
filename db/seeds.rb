#  post = Post.create(
# 	name: "New Album",
# 	title: "Bad Seeds",
# 	author: "Nick Cave",
# 	content: "Tracklist"
# )
# posts = [
# 	["New Album", "The Bad Seeds", "Nick Cave", "Tracklist"]
# ]
# post = Post.create(
# 	name: posts[0][0],
# 	title: posts[0][1],
# 	author: posts[0][2],
# 	content: posts[0][3]
# )
# posts = [
# {
# 	name: "New Album",
# 	title: "The Bad Seeds",
# 	author: "Nick Cave",
# 	content: "Tracklist"
# }
# ]
# post = Post.create(posts[0])
#
# puts "Some magic just create a #{ post.name } with id #{ post.id }!"
Post.destroy_all
puts "Destroyed everything you touch"
posts = [
{
	name: "New Album",
	title: "The Bad Seeds",
	author1: "Nick Cave",
	content: "Tracklist",
	image: File.open(Rails.root.join('public', 'images', 'pic-1.PNG'))
},
{
	name: "Old Album",
	title: "The Bad Seeds Old",
	author1: "Nick Cave Old Too",
	content: "Some Old Tracklist"
}
]
posts.each do |post|
	postik = Post.create(post)
	puts "Some magic just create a #{ postik.name } with id #{ postik.id }!"
end
