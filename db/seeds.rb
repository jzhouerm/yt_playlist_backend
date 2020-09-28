# Playlist.destroy_all 
Video.destroy_all
Note.destroy_all
puts "seeds destroyed...."


# User.create(first_name: "Jules" , last_name: "Zhou", password: "***", email: "jules@gmail.com")
# puts "user created"

# Playlist.create(name: "Music Video Playlist", user_id: User.all.first.id)
Playlist.create(name: "Workout Video Playlist", user_id: User.all.first.id)

# puts "playlists created"

Video.create(name:"Illenium - Lonely", url: "https://www.youtube.com/embed/M_CjuxUfmk8", playlist_id: Playlist.all.first.id)
Video.create(name:"Illenium - Nightlight", url: "https://www.youtube.com/embed/jTRZqjl2JYI", playlist_id: Playlist.all.first.id)
Video.create(name:"Illenium - Nightlight", url: "https://www.youtube.com/embed/tspNk3SwZ9s", playlist_id: Playlist.all.first.id)
Video.create(name:"Illenium - Nightlight", url: "https://www.youtube.com/embed/q-ktd4nEi3w", playlist_id: Playlist.all.first.id)

Video.create(name:"Full Body Workout Video - Part 1", url: "https://www.youtube.com/embed/CYD7f5b_qj4", playlist_id: Playlist.all.second.id)
Video.create(name:"Full Body Workout Video - Part 2", url: "https://www.youtube.com/embed/CYD7f5b_qj4", playlist_id: Playlist.all.second.id)
Video.create(name:"Full Body Workout Video - Part 3", url: "https://www.youtube.com/embed/CYD7f5b_qj4", playlist_id: Playlist.all.second.id)
Video.create(name:"Full Body Workout Video - Part 4", url: "https://www.youtube.com/embed/CYD7f5b_qj4", playlist_id: Playlist.all.second.id)


puts "videos created"

Note.create(text: "I love this video <3", video_id: Video.all.first.id)
Note.create(text: "I need to do this twice a week!", video_id: Video.all.first.id)

puts "notes created"
