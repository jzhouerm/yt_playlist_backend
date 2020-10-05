# Playlist.destroy_all 
Video.destroy_all
Note.destroy_all
puts "seeds destroyed...."
# User.create(first_name: "User2-lastname" , last_name: "User2-lastname", password: "***", email: "user2@gmail.com")
# puts "user created"
# Playlist.create(name: "Music Video Playlist", user_id: User.all.first.id)
# Playlist.create(name: "Workout Video Playlist", user_id: User.all.first.id)
# Playlist.create(name: "Coding Playlist", user_id: User.all.first.id)
# Playlist.create(name: "Career-related Videos", user_id: User.all.first.id)
# puts "playlists created"
# Music
Video.create(name:"Illenium - Lonely", url: "https://www.youtube.com/embed/M_CjuxUfmk8", playlist_id: Playlist.all.first.id)
Video.create(name:"Gryffin: Gravity Live", url: "https://www.youtube.com/embed/14xe9lVx-28", playlist_id: Playlist.all.first.id)
Video.create(name:"Illenium - Good Things Fall Apart", url: "https://www.youtube.com/embed/XpmeVNxZ-Ks", playlist_id: Playlist.all.first.id)
Video.create(name:"Said The Sky & Kwesi - All I Got", url: "https://www.youtube.com/embed/fRWimnP20aw", playlist_id: Playlist.all.first.id)
Video.create(name:"Juice WRLD - Fast", url: "https://www.youtube.com/embed/lzQpS1rH3zI", playlist_id: Playlist.all.first.id)
Video.create(name:"Gryffin - Digital Mirage", url: "https://www.youtube.com/embed/65A7_eNDcks", playlist_id: Playlist.all.first.id)
Video.create(name:"NF - The Search", url: "https://www.youtube.com/embed/fnlJw9H0xAM", playlist_id: Playlist.all.first.id)
Video.create(name:"Illenium - Nightlight", url: "https://www.youtube.com/embed/klp-RReW0jY", playlist_id: Playlist.all.first.id)
Video.create(name:"Godzilla (feat. Juice WRLD)", url: "https://www.youtube.com/embed/9XvXF1LrWgA", playlist_id: Playlist.all.first.id)
Video.create(name:"Post Malone - Candy paint", url: "https://www.youtube.com/embed/a2wERrLIYmI", playlist_id: Playlist.all.first.id)
Video.create(name:"Lauv – Feelings", url: "https://www.youtube.com/embed/S_w9RTYlsT4", playlist_id: Playlist.all.first.id)
Video.create(name:"Lo-fi Hip Hop Radio", url: "https://www.youtube.com/embed/5qap5aO4i9A", playlist_id: Playlist.all.first.id)

Video.create(name:"React Authorization", url: "https://www.youtube.com/embed/byfEActwtt8", playlist_id: Playlist.all.third.id)
Video.create(name:"React User Signup", url: "https://www.youtube.com/embed/1obOvcoM5bQ", playlist_id: Playlist.all.third.id)



Video.create(name:"Full Body Workout Video - Part 4", url: "https://www.youtube.com/embed/CYD7f5b_qj4", playlist_id: Playlist.all.second.id)
puts "videos created"
30.times do
    Note.create(text: "Re-watch this video next week", video_id: Video.all.sample.id)
    Note.create(text: "Refer back at 2:43 time stamp", video_id: Video.all.sample.id)
end

puts "notes created"

React JWT
https://www.youtube.com/embed/qAj_OfFAXnU


random video for new playlist
Home Decor
https://www.youtube.com/embed/FSHITL5oedk