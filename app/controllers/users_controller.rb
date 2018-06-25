# app/controllers/users_controller.rb
require 'faker'
require 'json'

$video = [
  {
    "videoId": "R29Pq23T6xE",
    "title": "Top 5 Covers of MARCH 2018 | Best Cover Songs 2018",
    "description": "Subscribe! http://smarturl.it/SubCoverNation Click That Bell to Turn On Notifications Covers performed by: Emma Heesters ( Friends - Marshmello ...",
    "thumbnail": "https://i.ytimg.com/vi/R29Pq23T6xE/default.jpg"
  },
  {
    "videoId": "3G8CM-6BZC4",
    "title": "Perfect - Ed Sheeran & Beyoncé (Boyce Avenue acoustic cover) on Spotify & Apple",
    "description": "Our friends at MVMT are offering $15 off any purchase at http://mvmt.com/boyce - just use the code \"BOYCE\" :) Tickets + VIP Meet & Greets: ...",
    "thumbnail": "https://i.ytimg.com/vi/3G8CM-6BZC4/default.jpg"
  },
  {
    "videoId": "MhQKe-aERsU",
    "title": "Ed Sheeran - Shape Of You ( cover by J.Fla )",
    "description": "My New album is out Now! Listen to Rose: http://bit.ly/JflacompleteworksonSpotify http://bit.ly/JFlaRoseAppleMusic http://bit.ly/jflaRoseonSpotify ...",
    "thumbnail": "https://i.ytimg.com/vi/MhQKe-aERsU/default.jpg"
  },
  {
    "videoId": "39_OmBO9jVg",
    "title": "All of Me - John Legend Cover (Luciana Zogbi)",
    "description": "All of Me - John Legend (Cover by Luciana Zogbi) Available on Itunes and Spotify Itunes: ...",
    "thumbnail": "https://i.ytimg.com/vi/39_OmBO9jVg/default.jpg"
  },
  {
    "videoId": "WsptdUFthWI",
    "title": "Closer - The Chainsmokers ft. Halsey (Boyce Avenue ft. Sarah Hyland cover) on Spotify & Apple",
    "description": "Tickets + VIP Meet & Greets: http://smarturl.it/BATour Spotify: http://smarturl.it/CSV4Spotify1 Apple: http://smarturl.it/CSV4Apple1 iTunes: ...",
    "thumbnail": "https://i.ytimg.com/vi/WsptdUFthWI/default.jpg"
  },
  {
    "videoId": "i1R4R84-EPA",
    "title": "Camila Cabello - Havana ( cover by J.Fla )",
    "description": "My New album is out today! Listen to Rose: http://bit.ly/JflacompleteworksonSpotify http://bit.ly/JFlaRoseAppleMusic http://bit.ly/jflaRoseonSpotify ...",
    "thumbnail": "https://i.ytimg.com/vi/i1R4R84-EPA/default.jpg"
  },
  {
    "videoId": "jPulLuBRfWQ",
    "title": "No te creas tan importante- El bebeto (Cover by Xandra Garsem)",
    "description": "SOCIAL: http://facebook.com/xandragarsem http://instagram.com/xandragarsem http://twitter.com/xandragarsem VISIT MY BLOG: http://bonjourxandra.com.",
    "thumbnail": "https://i.ytimg.com/vi/jPulLuBRfWQ/default.jpg"
  },
  {
    "videoId": "sEh1hgHkoNU",
    "title": "BEst Songs 2017 English Cover Acoustic -Top Song Acoustic Covers of Popular Songs 2017",
    "description": "BEst Songs 2017 English Cover Acoustic -Top Song Acoustic Covers of Popular Songs 2017 NEW SONGS :https://goo.gl/ikBjXa.",
    "thumbnail": "https://i.ytimg.com/vi/sEh1hgHkoNU/default.jpg"
  },
  {
    "videoId": "1dl-ooknk1U",
    "title": "Ed Sheeran - Perfect | Cover",
    "description": "Make sure to give this a thumbs up if you enjoyed and subscribe if you haven't already! We are on our way to 500000!! Madness. I was going to do Sign of the ...",
    "thumbnail": "https://i.ytimg.com/vi/1dl-ooknk1U/default.jpg"
  },
  {
    "videoId": "atKzYpW0OMY",
    "title": "Dan - Sheila on 7 (Bintan Radhita, Andri Guitara) cover",
    "description": "Lupakanlah saja diriku.. Bila itu bisa membuatmu Kembali bersinar dan berpijar seperti dulu kala ( ujar lampu neon kepada bohlam -_- ) Dan - Sheila on 7 ...",
    "thumbnail": "https://i.ytimg.com/vi/atKzYpW0OMY/default.jpg"
  },
  {
    "videoId": "UkzFMSDALz4",
    "title": "LABRINTH - JEALOUS (Judika Cover)",
    "description": "untuk memenuhi permintaan judikaholic semuanya, maka aku membuat cover lagu ini, dan jika ingin req lagu apa lagi yang ingin dicover, bisa tinggalkan di ...",
    "thumbnail": "https://i.ytimg.com/vi/UkzFMSDALz4/default.jpg"
  },
  {
    "videoId": "O8hm2Ml-pA8",
    "title": "Khalid - Fast Car (Tracy Chapman cover) in the Live Lounge",
    "description": "Khalid covers Tracy Chapman's Fast Car in the BBC Radio 1 Live Lounge http://vevo.ly/LuI8ZM.",
    "thumbnail": "https://i.ytimg.com/vi/O8hm2Ml-pA8/default.jpg"
  },
  {
    "videoId": "4bmUFRxNEIg",
    "title": "Luis Fonsi - Despacito ( cover by J.Fla )",
    "description": "My New album is out Now! Listen to Rose: http://bit.ly/JflacompleteworksonSpotify http://bit.ly/JFlaRoseAppleMusic http://bit.ly/jflaRoseonSpotify ...",
    "thumbnail": "https://i.ytimg.com/vi/4bmUFRxNEIg/default.jpg"
  },
  {
    "videoId": "DDjlaN-X8-0",
    "title": "Radiohead - Creep (cover) by Daniela Andrade",
    "description": "Listen on Spotify / Apple Music: http://smarturl.it/da-covers FACEBOOK: http://www.facebook.com/danielaandrade INSTAGRAM: ...",
    "thumbnail": "https://i.ytimg.com/vi/DDjlaN-X8-0/default.jpg"
  },
  {
    "videoId": "fuBG_osuqy8",
    "title": "Take Me To Church - Hozier Cover",
    "description": "Instagram: http://instagram.com/sofiakarlberg Spotify: http://open.spotify.com/track/6ZWr9FsDrgJMc9Z16NL2cI iTunes: ...",
    "thumbnail": "https://i.ytimg.com/vi/fuBG_osuqy8/default.jpg"
  },
  {
    "videoId": "vh1qTVoMC_A",
    "title": "Perfect - Ed Sheeran (Cover) by Hanin Dhiya",
    "description": "Playlist Album \"Cerita Hanin Dhiya\" : https://goo.gl/ZrGpii Spotify : https://WarnerMusicIndonesia.lnk.to/AlbumCeritaHaninDhiyaIA/spotify Apple Music ...",
    "thumbnail": "https://i.ytimg.com/vi/vh1qTVoMC_A/default.jpg"
  },
  {
    "videoId": "cSLAO7zxS2M",
    "title": "\"Counting Stars\" - OneRepublic (Alex Goot, Kurt Schneider, and Chrissy Costanza Cover)",
    "description": "This song on iTunes/Spotify: http://smarturl.it/agATCcs - Alex Goot original music: http://bit.ly/AG_originals. \"Counting Stars\" Cover by Alex Goot, Chrissy...",
    "thumbnail": "https://i.ytimg.com/vi/cSLAO7zxS2M/default.jpg"
  },
  {
    "videoId": "npFAmRqHpQc",
    "title": "【라온】 NARUTO SHIPPUDEN OP.16 - SILHOUETTE (シルエット) FULL VOCAL COVER",
    "description": "Raon's Youtube :: https://youtube.com/c/raonlee Raon's Twitter :: https://twitter.com/raon_leee Raon's Instagram :: https://instagram.com/raon_lee/ Raon's ...",
    "thumbnail": "https://i.ytimg.com/vi/npFAmRqHpQc/default.jpg"
  },
  {
    "videoId": "BS3itQPSqZc",
    "title": "Kangen - Dewa 19 (Bintan, Andri Guitara) cover",
    "description": "Ku akan pulang.. melepas semua kerinduan yang terpendam Ada yang pernah rindu tapi dia gak rindu? Ada Bintan Radhita yang lagi Kangen kalian nih.",
    "thumbnail": "https://i.ytimg.com/vi/BS3itQPSqZc/default.jpg"
  },
  {
    "videoId": "PIOXABoz-34",
    "title": "BEST DESPACITO covers in The Voice | The Voice Global",
    "description": "The single \"Despacito\" has made history as the most frequently streamed song of all time. Therefore, we created a compilation with some of the best Despacito ...",
    "thumbnail": "https://i.ytimg.com/vi/PIOXABoz-34/default.jpg"
  },
  {
    "videoId": "jWb4T5R6Z_E",
    "title": "Pink Watches Fan Covers On YouTube | Glamour",
    "description": "On this episode of \"You Sang My Song,\" Pink watches YouTube fan covers of her songs \"What About Us,\" \"Perfect,\" \"Try,\" \"Who Knew,\" \"Just Give Me a Reason,\" ...",
    "thumbnail": "https://i.ytimg.com/vi/jWb4T5R6Z_E/default.jpg"
  },
  {
    "videoId": "Cv7Q3a_2lYI",
    "title": "rockstar (Post Malone) - Sofia Karlberg Cover",
    "description": "Don't forget to follow me on Instagram, Facebook & Snapchat   Instagram: http://instagram.com/sofiakarlberg Facebook: http://facebook.com/sofiakarlbergofficial ...",
    "thumbnail": "https://i.ytimg.com/vi/Cv7Q3a_2lYI/default.jpg"
  },
  {
    "videoId": "e_68cdcRfw8",
    "title": "Semua Tentang Kita - Peterpan (Cover) | Covernya Jeha",
    "description": "Wardrobe by : GREENLIGHT http://www.thisisgreenlight.com THANK YOU FOR WATCHING xx. - My Link's - Instagram : http://instagram.com/Hanggini Twitter ...",
    "thumbnail": "https://i.ytimg.com/vi/e_68cdcRfw8/default.jpg"
  },
  {
    "videoId": "A9N-qBAhPcA",
    "title": "Tuyển Tập Những Bài Hát EDM Hay Nhất Của J.Fla Cover 2017 - Đừng Nghe Nghiện Đấy",
    "description": "Những Bài Hát EDM Hay Nhất Của J.Fla Cover 2017 - J.Fla tên thật là Kim JungHwa, 29 tuổi, đến từ Seoul, Hàn Quốc. Cách đây 6 năm, cô bắt đầu sự nghiệp ...",
    "thumbnail": "https://i.ytimg.com/vi/A9N-qBAhPcA/default.jpg"
  },
  {
    "videoId": "vFERgVcBH2U",
    "title": "You  - Ten 2 Five (Astri, Andri Guitara) cover",
    "description": "Hey balik lagi ni masih bareng Astri disini bawain lagu sendu. Masih lagu lama, kali ini dari band Indonesia, Ten 2 Five yang judulnya You. Lagunya populer ...",
    "thumbnail": "https://i.ytimg.com/vi/vFERgVcBH2U/default.jpg"
  },
  {
    "videoId": "7kKU1kRoa3E",
    "title": "TUYỂN TẬP ACOUSTIC COVER BẤT HỦ - NHỮNG BẢN NHẠC CŨ ĐƯỢC COVER 2017",
    "description": "TUYỂN TẬP ACOUSTIC COVER BẤT HỦ - NHỮNG BẢN NHẠC CŨ ĐƯỢC COVER 2017, NHỮNG BẢN ACOUSTIC HAY NHẤT MỌI THỜI ĐẠI , Tuyển tập ...",
    "thumbnail": "https://i.ytimg.com/vi/7kKU1kRoa3E/default.jpg"
  },
  {
    "videoId": "nw2QNcdvDtc",
    "title": "Selepas Kau Pergi - La Luna (cover) by The Macarons Project",
    "description": "Selepas Kau Pergi - La Luna (cover) Listen NOW on Spotify: https://goo.gl/QxFVqs Get it on iTunes: https://goo.gl/M6NxLe Deezer: https://goo.gl/PMyb7V Google ...",
    "thumbnail": "https://i.ytimg.com/vi/nw2QNcdvDtc/default.jpg"
  },
  {
    "videoId": "OYgfAq6ttYc",
    "title": "Time After Time (Acoustic Cover)",
    "description": "Throwback to that time Jaclyn and I collaborated with Boyce Avenue. So surreal! If you haven't seen it, hope you enjoy our cover of \"Time After Time\" by Cyndi ...",
    "thumbnail": "https://i.ytimg.com/vi/OYgfAq6ttYc/default.jpg"
  },
  {
    "videoId": "2yy100V7u3Y",
    "title": "Imagine Dragons - Thunder ( cover by J.Fla )",
    "description": "My New album is out Now! Listen to Rose: http://bit.ly/JflacompleteworksonSpotify http://bit.ly/JFlaRoseAppleMusic http://bit.ly/jflaRoseonSpotify ...",
    "thumbnail": "https://i.ytimg.com/vi/2yy100V7u3Y/default.jpg"
  },
  {
    "videoId": "V44rurPLjvY",
    "title": "Tuyển Tập Những Bản Cover Mashup Nhạc Trẻ Hay Nhất 2017",
    "description": "NhacTre #NhacTreMoiNhat ▻ Đăng kí kênh tại: https://goo.gl/cH3gtZ ▻ Fanpage: https://www.facebook.com/baohongofficial Bài hát: Tuyển Tập Những Bản ...",
    "thumbnail": "https://i.ytimg.com/vi/V44rurPLjvY/default.jpg"
  },
  {
    "videoId": "ZvrJFwErj6g",
    "title": "Nufi Wardhana - Benci Untuk Mencinta (Live cover version )",
    "description": "Note : Akun media sosial Nufi Wardhana hanyalah akun instagram @nufiwardhanaofficial Tidak ada Facebook maupun Twitter. Pihak Nufi Wardhana tidak ...",
    "thumbnail": "https://i.ytimg.com/vi/ZvrJFwErj6g/default.jpg"
  },
  {
    "videoId": "6tUTSoLzv74",
    "title": "Call Out My Name by The Weeknd | Alex Aiono Cover",
    "description": "Can we get this cover Call Out My Name from The Weeknd to 50000 likes? And please subscribe: https://www.youtube.com/user/AlexAiono, it means a lot to me ...",
    "thumbnail": "https://i.ytimg.com/vi/6tUTSoLzv74/default.jpg"
  },
  {
    "videoId": "MQoW9xifQi0",
    "title": "Metallica 2018-04-28 Cracow, Tauron Arena, Poland - Wehikuł Czasu (Dżem cover)(4K 2160p)",
    "description": "Metallica 2018-04-28 Kraków, Tauron Arena, Polska (4K 2160p) Wehikuł Czasu (Dżem cover)",
    "thumbnail": "https://i.ytimg.com/vi/MQoW9xifQi0/default.jpg"
  },
  {
    "videoId": "Jl8fV1jUQPs",
    "title": "Crazy In Love (Beyoncé Cover)",
    "description": "50 Shades Of Grey Trailer Song - Crazy In Love (Beyoncé Cover) Spotify: http://open.spotify.com/track/7jOvEsDIjHRH0LwCkwZSHS iTunes: ...",
    "thumbnail": "https://i.ytimg.com/vi/Jl8fV1jUQPs/default.jpg"
  },
  {
    "videoId": "ASAzwmORUJk",
    "title": "Despacito - Luis Fonsi, Daddy Yankee ft. Justin Bieber (Madilyn Bailey & Leroy Sanchez Cover)",
    "description": "Listen to my new single TETRIS everywhere! - http://red.lnk.to/Tetris Stream on Spotify - https://open.spotify.com/album/0B75OuY7kuQXfz7qF5r2l3 Download on ...",
    "thumbnail": "https://i.ytimg.com/vi/ASAzwmORUJk/default.jpg"
  },
  {
    "videoId": "dSYtf_sJRHo",
    "title": "CRISP - ЮТУБ БЭЙБИ ( GUF cover )",
    "description": "Как и обещал - лицо Криспа в новом ( первом ) клипе \"ЮТУБ БЭЙБИ\" на канале. Это не DISS CHALENGE НА YOUTUBE Запись и сведе...",
    "thumbnail": "https://i.ytimg.com/vi/dSYtf_sJRHo/default.jpg"
  },
  {
    "videoId": "RsSftfKzRPM",
    "title": "Attention by Charlie Puth | Alex Aiono and Sabrina Carpenter Cover",
    "description": "Can we get this cover Attention from Charlie Puth to 80000 likes? THANKS SABRINA for jumping in the video!!! And you can also listen to Question here: ...",
    "thumbnail": "https://i.ytimg.com/vi/RsSftfKzRPM/default.jpg"
  },
  {
    "videoId": "iPf_ifCKftc",
    "title": "Shawn Mendes - Psycho (Post Malone cover) in the Live Lounge",
    "description": "Shawn Mendes covers Post Malone's Psycho in the BBC Radio 1 Live Lounge.",
    "thumbnail": "https://i.ytimg.com/vi/iPf_ifCKftc/default.jpg"
  },
  {
    "videoId": "bRRn6FXf6vg",
    "title": "Cô bé Cover 1 Phút quá hay tại quán Trà Đá Huyền Thoại - Mỹ Hồng",
    "description": "Cô bé Cover 1 Phút quá hay tại quán Trà Đá Huyền Thoại - Mỹ Hồng [KHOI MY TUBE] MỘT PHÚT - KHỞI MY: https://youtu.be/wN_goJznt54 Dịch vụ quay phim, ...",
    "thumbnail": "https://i.ytimg.com/vi/bRRn6FXf6vg/default.jpg"
  },
  {
    "videoId": "lGbzyKWkiio",
    "title": "TÌNH ĐƠN PHƯƠNG ACOUSTIC COVER - Edward Duong Nguyen Ft Tùng Acoustic",
    "description": "TÌNH ĐƠN PHƯƠNG ACOUSTIC COVER   Một sản phẩm cover kết hợp giữa Edward Dương Nguyễn và Tùng Acoustic. Tán gái chưa bao giờ là đơn giản các ...",
    "thumbnail": "https://i.ytimg.com/vi/lGbzyKWkiio/default.jpg"
  },
  {
    "videoId": "BIHrkqBFUL4",
    "title": "Let Her Go - Passenger (Official Video Cover by Jasmine Thompson)",
    "description": "My cover of 'Let Her Go' by Passenger. My mum took a break so I recorded and filmed it all by myself. Hope you enjoy! x On iTunes: http://geni.us/LetH. Amazon: ...",
    "thumbnail": "https://i.ytimg.com/vi/BIHrkqBFUL4/default.jpg"
  },
  {
    "videoId": "sajL7EtBkLg",
    "title": "Lapsus Band- Opala, Zena starija, Sam sam /Cover MIX (HD)",
    "description": "FB Page: https://www.facebook.com/Lapsus-Band-175466592606180/?ref=bookmarks.",
    "thumbnail": "https://i.ytimg.com/vi/sajL7EtBkLg/default.jpg"
  },
  {
    "videoId": "A77Y3z13BjY",
    "title": "Metallica Wehikuł Czasu (Dzem cover)  Kraków 2018",
    "description": "Metallica ",
    "thumbnail": "https://i.ytimg.com/vi/A77Y3z13BjY/default.jpg"
  },
  {
    "videoId": "MePwKkaft5A",
    "title": "Virgoun - Bukti (Aviwkila Cover)",
    "description": "Virgoun - Bukti (Acoustic Cover) Memenangkan hatiku Bukanlah satu hal yang mudah Kau berhasil membuat Ku tak bisa hidup tanpamu Menjaga cinta itu ...",
    "thumbnail": "https://i.ytimg.com/vi/MePwKkaft5A/default.jpg"
  },
  {
    "videoId": "9gT0ZVS3KY8",
    "title": "Tuyển Tập Những Bản Mashup Cover Nhạc Trẻ Hay Nhất 2018",
    "description": "NhacTre #NhacTreMoiNhat ▻ Đăng kí kênh tại: https://goo.gl/cH3gtZ ▻ Fanpage: https://www.facebook.com/baohongofficial Bài hát: Ca sĩ: Lời bài hát: ...",
    "thumbnail": "https://i.ytimg.com/vi/9gT0ZVS3KY8/default.jpg"
  },
  {
    "videoId": "WmmjKYXWvFc",
    "title": "ฉันไม่มี - ทีที T_T (เพิ่มเนื้อผู้หญิง) Cover by ไอซ์ ธมลวรรณ & ล็อตเต้ Hugeboy",
    "description": "เพลง ฉันไม่มี - ทีที T_T (เพิ่มเนื้อผู้หญิง) Cover by ไอซ์ ธมลวรรณ & ล็อตเต้ Hugeboy เนื...",
    "thumbnail": "https://i.ytimg.com/vi/WmmjKYXWvFc/default.jpg"
  },
  {
    "videoId": "7Kpnda07tfo",
    "title": "หมากเกมนี้ - อินคา Cover By สมอารมณ์",
    "description": "หมากเกมนี้ - อินคา Cover By สมอารมณ์ ☎   ติดต่องาน วงสมอารมณ์&ติดต่อโฆษณา...",
    "thumbnail": "https://i.ytimg.com/vi/7Kpnda07tfo/default.jpg"
  },
  {
    "videoId": "BqWhPYZnnkQ",
    "title": "Angus and Julia Stone cover Drake 'Passionfruit' for Like A Version",
    "description": "Like A Version is a segment on Australian radio station triple j. Every Friday morning a musician or band comes into the studio to play one of their own songs and ...",
    "thumbnail": "https://i.ytimg.com/vi/BqWhPYZnnkQ/default.jpg"
  },
  {
    "videoId": "nuUWyfFELIg",
    "title": "รวมเพลง cover ผู้หญิงร้อง เพราะๆ เพลงฮิตติดชาร์ต 2017",
    "description": "รวมเพลงcover สตริงเพราะๆ ใหม่ล่าสุด 2017 ฝาก subscribe ช่องเพื่อติดตามคลิปใหม่ด้ว...",
    "thumbnail": "https://i.ytimg.com/vi/nuUWyfFELIg/default.jpg"
  },
  {
    "videoId": "JkWWKUflpvY",
    "title": "Phiên bản hoàn hảo |tập 11: Lynk Lee cover ca khúc \"Một thời đã xa\" chất đến Phương Thanh cũng thích",
    "description": "Phiên bản hoàn hảo tập 11, Tô Mạnh Linh (Lynk Lee) cover ca khúc Một thời đã xa của Phương Thanh hay đến không thể ngờ. Phiên bản hoàn hảo phát sóng.",
    "thumbnail": "https://i.ytimg.com/vi/JkWWKUflpvY/default.jpg"
  },
  {
    "videoId": "SQ7rGkSGGOo",
    "title": "Tone Stith - Boo'd Up (Ella Mai Cover)",
    "description": "London hailing R&B starlet Ella Mai's \"Boo'd Up\" has quickly become the biggest hit of her career, surpassing her Ty Dolla $ign and DJ Mustard collab \"She ...",
    "thumbnail": "https://i.ytimg.com/vi/SQ7rGkSGGOo/default.jpg"
  },
  {
    "videoId": "oI42BohDabU",
    "title": "Katy Perry Watches Fan Covers On YouTube | Glamour",
    "description": "On this episode of \"You Sang My Song,\" Katy Perry watches YouTube fan covers of her songs \"Unconditionally,\" \"Last Friday Night (T.G.I.F.),\" \"Dark Horse,\" ...",
    "thumbnail": "https://i.ytimg.com/vi/oI42BohDabU/default.jpg"
  },
  {
    "videoId": "eGZiQJ4UUGU",
    "title": "Uchiage Hanabi (打上花火)┃Cover by Raon Lee & Dragon Stone",
    "description": "Raon's Youtube :: https://youtube.com/c/raonlee Raon's Twitter :: https://twitter.com/raon_leee Raon's Instagram :: https://instagram.com/raon_lee/ Raon's ...",
    "thumbnail": "https://i.ytimg.com/vi/eGZiQJ4UUGU/default.jpg"
  },
  {
    "videoId": "iGVMzRbSHrc",
    "title": "Watch The Ratpackers SENSATIONAL cover of New York, New York | Auditions | BGT 2018",
    "description": "They just don't make 'em like they used to in the swing world - or do they?! Meet The Ratpackers - bringing all of the swing and all of the soul to the BGT stage.",
    "thumbnail": "https://i.ytimg.com/vi/iGVMzRbSHrc/default.jpg"
  },
  {
    "videoId": "LjooesdKxrg",
    "title": "บุพเพสันนิวาส[ไอซ์ ศรัณยู] - ปราง ปรางทิพย์【Cover】",
    "description": "Original Song https://youtu.be/uNWIeZWD4sw เพลง บุพเพสันนิวาส (เพลงประกอบละครบุพเพสันนิวาส) ศิลปิ...",
    "thumbnail": "https://i.ytimg.com/vi/LjooesdKxrg/default.jpg"
  },
  {
    "videoId": "-H91EVNH93M",
    "title": "Michael Jackson - Heal The World ( cover by J.Fla )",
    "description": "My New album is out today! Listen to Rose: http://bit.ly/JflacompleteworksonSpotify http://bit.ly/JFlaRoseAppleMusic http://bit.ly/jflaRoseonSpotify ...",
    "thumbnail": "https://i.ytimg.com/vi/-H91EVNH93M/default.jpg"
  },
  {
    "videoId": "Ymv01JV1lmo",
    "title": "ถอย - GLISS Cover by หวา feat.โด่งบีสตาร์",
    "description": "\"แม้ยังรัก แต่ก็ต้องถอย\" Official MV : https://www.youtube.com/watch?v=o8uRydqx06g.",
    "thumbnail": "https://i.ytimg.com/vi/Ymv01JV1lmo/default.jpg"
  },
  {
    "videoId": "fvEZUbzqqyM",
    "title": "Mirrors - Justin Timberlake (Boyce Avenue feat. Fifth Harmony cover) on Spotify & Apple",
    "description": "Tickets + VIP Meet & Greets: http://smarturl.it/BATour Spotify: http://smarturl.it/CSV3Spotify1 Apple: http://smarturl.it/CSV3Apple1 iTunes: ...",
    "thumbnail": "https://i.ytimg.com/vi/fvEZUbzqqyM/default.jpg"
  },
  {
    "videoId": "P8kMIQSwZsc",
    "title": "Camila Cabello ft. Young Thug - Havana || Bars and Melody Cover",
    "description": "SUBSCRIBE TO BAM: http://bit.ly/SUBscribe_BAM LISTEN ON SPOTIFY: http://spoti.fi/28VLG9o iTunes: http://apple.co/1HoeLTQ Album Bundle ...",
    "thumbnail": "https://i.ytimg.com/vi/P8kMIQSwZsc/default.jpg"
  },
  {
    "videoId": "DnU5ryajwQY",
    "title": "Boyz II Men - On Bended Knee (AHMIR cover)",
    "description": "Our NEW self-titled album of all original R&B songs featuring the single \"My Love\" is AVAILABLE NOW! https://ahmirmusic.net/new-album Pandora: ...",
    "thumbnail": "https://i.ytimg.com/vi/DnU5ryajwQY/default.jpg"
  },
  {
    "videoId": "PgiFPgr4Kqo",
    "title": "หากฉันตาย 60Miles (cover) - Chilling Sunday",
    "description": "Guitar : Boy , Vocal : Palm , cover 60 Miles , page : https://www.facebook.com/chilling.sunday , Socialcam : Palm_Swsi.",
    "thumbnail": "https://i.ytimg.com/vi/PgiFPgr4Kqo/default.jpg"
  },
  {
    "videoId": "q8Lh4ccsQjo",
    "title": "NARUTO ED 1 - Wind ┃Cover by Raon Lee",
    "description": "9월 16일 / 17일 저녁 6시, 홍대 웨스트브릿지에서 Raon 1st Live 앵콜콘서트가 열립니다! 예매는 여기서! Go Go XD !",
    "thumbnail": "https://i.ytimg.com/vi/q8Lh4ccsQjo/default.jpg"
  },
  {
    "videoId": "fhzSSW__ZTE",
    "title": "AVICII - Wake Me Up (Acoustic Version)",
    "description": "I was honored to get to work with Avicii, even if it was only for an afternoon, on a 360 video I directed for his song Waiting For Love. I know his music meant so ...",
    "thumbnail": "https://i.ytimg.com/vi/fhzSSW__ZTE/default.jpg"
  },
  {
    "videoId": "DMYRPbg22pY",
    "title": "BTS (방탄소년단) - DNA |  KHS & Megan Lee Cover",
    "description": "After all the love on the Evolution of K-Pop video, I wanted to cover a BTS song :) Download/Stream this track: http://smarturl.it/nhsDNA Let me know what you ...",
    "thumbnail": "https://i.ytimg.com/vi/DMYRPbg22pY/default.jpg"
  },
  {
    "videoId": "T1NWMYpkuI8",
    "title": "ใครคนนั้น - พลพล x Labanoon [ Cover by บี๋, กีต้าร์ by บาส ]",
    "description": "ฝากติดตามผลงานจาก ARB Studio ด้วยนะครับ ติดต่องาน 097-309-8497   เพจห้องซ้อมดนตรี,ห้...",
    "thumbnail": "https://i.ytimg.com/vi/T1NWMYpkuI8/default.jpg"
  },
  {
    "videoId": "J2Rxr4Qtnz4",
    "title": "Người Phản Bội - Nguyễn Thạc Bảo Ngọc ( Bản Cover Hay Nhất )",
    "description": "Người Phản Bội - Nguyễn Thạc Bảo Ngọc ( Cover )",
    "thumbnail": "https://i.ytimg.com/vi/J2Rxr4Qtnz4/default.jpg"
  },
  {
    "videoId": "Tz4Au6JDkhY",
    "title": "DEVUÉLVEME EL CORAZÓN - SEBASTIAN YATRA | CAROLINA GARCÍA Y SERGIO LÓPEZ COVER",
    "description": "ÁBREME! Sentimos que esta cover llegue en un día diferente, pero el miércoles nos fue imposible que estuviera lista por culpa del programa con el que se ...",
    "thumbnail": "https://i.ytimg.com/vi/Tz4Au6JDkhY/default.jpg"
  },
  {
    "videoId": "FgpF6YodTG4",
    "title": "tennessee whiskey amazing cover!!!!",
    "description": "check out \"kris jones\"channel https://www.youtube.com/channel/UCZSL5Qk4-XTm2A4U-cdloCA to watch more and catch up with the latest songs!! couldn't ...",
    "thumbnail": "https://i.ytimg.com/vi/FgpF6YodTG4/default.jpg"
  },
  {
    "videoId": "m3lF2qEA2cw",
    "title": "Creep - Vintage Postmodern Jukebox Radiohead Cover ft. Haley Reinhart",
    "description": "Order CDs / Vinyl: http://smarturl.it/shoppmjyt Get tix to see PMJ on tour: http://smarturl.it/tourpmjyt PMJ on Spotify: bit.ly/PMJ12Hours One of the highlights of our ...",
    "thumbnail": "https://i.ytimg.com/vi/m3lF2qEA2cw/default.jpg"
  },
  {
    "videoId": "2fxYjt6KtjM",
    "title": "Post Malone - I Fall Apart (Cover)",
    "description": "STREAM THIS COVER ON SPOTIFY: https://open.spotify.com/track/22xST6dTj7dL0kdY77aoQd ITUNES/APPLE MUSIC: ...",
    "thumbnail": "https://i.ytimg.com/vi/2fxYjt6KtjM/default.jpg"
  },
  {
    "videoId": "_uDpsS2Wgq8",
    "title": "The Neighbourhood - Sweater Weather (Cover)",
    "description": "something different featuring my lovely stye Listen to my new song 'Here' on Spotify: http://smarturl.it/sHere Facebook: http://facebook.com/alessiacara Twitter: ...",
    "thumbnail": "https://i.ytimg.com/vi/_uDpsS2Wgq8/default.jpg"
  },
  {
    "videoId": "dCGWi2yFjgQ",
    "title": "Shigatsu wa Kimi no Uso ED2 - Orange┃Cover by Raon Lee",
    "description": "Raon's Youtube :: https://youtube.com/c/raonlee Raon's Twitter :: https://twitter.com/raon_leee Raon's Instagram :: https://instagram.com/raon_lee/ Raon's ...",
    "thumbnail": "https://i.ytimg.com/vi/dCGWi2yFjgQ/default.jpg"
  },
  {
    "videoId": "xWdRK42zjzo",
    "title": "[Cover] Hoàng Yến - Hao Xiang Ni (I Miss You)",
    "description": "Lâu lâu cover xíu ^^! GIó ơi là gió luôn mà vẫn cố cười vs hát. Yến xip phép tác giả chút xíu có sửa lời nha! Tặng cho mọi người và cho cái bạn đó...",
    "thumbnail": "https://i.ytimg.com/vi/xWdRK42zjzo/default.jpg"
  },
  {
    "videoId": "2GGRdwfhl-U",
    "title": "Taylor Swift covers Vance Joy's Riptide in the Live Lounge",
    "description": "Taylor Swift performs a cover of Vance Joy's Riptide in the Live Lounge for Fearne Cotton.",
    "thumbnail": "https://i.ytimg.com/vi/2GGRdwfhl-U/default.jpg"
  },
  {
    "videoId": "yyia9VaZwJs",
    "title": "ถอย - GLISS [cover] TheBroSis",
    "description": "Fanpage : TheBroSis https://www.facebook.com/TheBroSisBand/ Facebook: http://www.facebook.com/fenderT http://www.facebook.com/vichariya Instagram: ...",
    "thumbnail": "https://i.ytimg.com/vi/yyia9VaZwJs/default.jpg"
  },
  {
    "videoId": "C1UiPovXwEc",
    "title": "MV | Ánh Nắng Của Anh | Long Hoàng Creart Cover",
    "description": "LONG HOÀNG CREART OFFICIAL YOUTUBE CHANNEL ▻ Subscribe Long Hoàng Channel: https://goo.gl/LtibwS ▻ SPONSORED BY CREART ...",
    "thumbnail": "https://i.ytimg.com/vi/C1UiPovXwEc/default.jpg"
  },
  {
    "videoId": "OKB6IuEZv0I",
    "title": "Cô gái Cover Đâu Chỉ Riêng Em Qúa Sâu Khiến Bạn Trai Ngại Sấp Mặt - Phương Anh",
    "description": "Cô gái Cover Đâu Chỉ Riêng Em Qúa Sâu Khiến Bạn Trai Ngại Sấp Mặt Thể Hiện: Phương Anh Sáng tác: Khắc Hưng FOLLOW MỸ TÂM: MV official ...",
    "thumbnail": "https://i.ytimg.com/vi/OKB6IuEZv0I/default.jpg"
  },
  {
    "videoId": "apvl81myyjU",
    "title": "Halo Beyonce // Madilyn Bailey (Piano Cover Music Video)",
    "description": "Listen to my new single TETRIS everywhere! - http://red.lnk.to/Tetris ORIGINAL SINGLE 'Tetris' COMING FEB.16.2018. DEBUT ORIGINAL ALBUM \"WISER\": ...",
    "thumbnail": "https://i.ytimg.com/vi/apvl81myyjU/default.jpg"
  },
  {
    "videoId": "Ky7BvZpdxYQ",
    "title": "THE GREATEST SHOWMAN | OFFICIAL MUSIC VIDEO [HD] \"THIS IS ME\" cover",
    "description": "Inspired by the imagination of P.T. Barnum, The Greatest Showman is an original musical. This is an Official Music Video from the Ohana Adventure starring the ...",
    "thumbnail": "https://i.ytimg.com/vi/Ky7BvZpdxYQ/default.jpg"
  },
  {
    "videoId": "8RANrChinOE",
    "title": "สองรัก - Zeal Cover By Tom",
    "description": "สองรัก - Zeal Cover By Tom.",
    "thumbnail": "https://i.ytimg.com/vi/8RANrChinOE/default.jpg"
  },
  {
    "videoId": "_6HNjq5cWwE",
    "title": "Passenger | Losing My Religion (R.E.M. Cover)",
    "description": "Passenger's new album 'The Boy Who Cried Wolf' is out now! Order CD or Vinyl from https://store.passengermusic.com Stream or Download ...",
    "thumbnail": "https://i.ytimg.com/vi/_6HNjq5cWwE/default.jpg"
  },
  {
    "videoId": "a7UFm6ErMPU",
    "title": "Vazquez Sounds Adele - Rolling In The Deep (Cover)",
    "description": "Contrataciones (Booking): info@vazquezsounds.com Siguenos/Follow Us Instagram: https://www.instagram.com/vsoundsofficial Facebook: ...",
    "thumbnail": "https://i.ytimg.com/vi/a7UFm6ErMPU/default.jpg"
  },
  {
    "videoId": "7tl17FghZLI",
    "title": "Cùng Anh - Lan Huong Cover",
    "description": "Cùng Anh - Lan Huong Cover Bản cover tiếp theo của Hương được quay tại thành phố Đà Lạt xinh đẹp. Cám ơn Luong Huy đã đồng diễn xuất và thực hiện clip ...",
    "thumbnail": "https://i.ytimg.com/vi/7tl17FghZLI/default.jpg"
  },
  {
    "videoId": "h1SsrqMdfLg",
    "title": "Before He Cheats - Carrie Underwood (Vintage Country Cover) ft. Kitty Hawk",
    "description": "PMJ country cover of \"Before He Cheats\" by Carrie Underwood ft. Kitty Hawk. Get the song: http://smarturl.it/pmjbeforehecheats | Subscribe: http://bit.ly/subPMJ ...",
    "thumbnail": "https://i.ytimg.com/vi/h1SsrqMdfLg/default.jpg"
  },
  {
    "videoId": "oCtYekG1qBc",
    "title": "Bruno Mars covers Adele's All I Ask in the Live Lounge",
    "description": "Bruno Mars covers Adele's All I Ask in the Live Lounge for BBC Radio 1 for Clara Amfo. In the UK? Check out Clara Amfo's Radio 1 show including more live ...",
    "thumbnail": "https://i.ytimg.com/vi/oCtYekG1qBc/default.jpg"
  },
  {
    "videoId": "zqoj_3r9oqg",
    "title": "Paramore cover Drake's Passionfruit in the Live Lounge",
    "description": "Paramore cover Drake's Passionfruit in the BBC Radio 1 Live Lounge.",
    "thumbnail": "https://i.ytimg.com/vi/zqoj_3r9oqg/default.jpg"
  },
  {
    "videoId": "RQXaIyveEGI",
    "title": "บ่เป็นหยัง เค้าเข้าใจ [ Cover by บี๋, กีต้าร์ บาส ]",
    "description": "ฝากติดตามผลงานจาก ARB Studio ด้วยนะครับ ติดต่องาน 097-309-8497   หรือ ทางเพจ เพจห้องซ...",
    "thumbnail": "https://i.ytimg.com/vi/RQXaIyveEGI/default.jpg"
  },
  {
    "videoId": "UfQHEpf2q8k",
    "title": "Childish Gambino covers Tamia 'So Into You' for Like A Version",
    "description": "Childish Gambino covers one of his fave R&B classics, Tamia's 'So Into You' for Like A Version. Subscribe: http://tripj.net/151BPk6 Like A Version is a segment ...",
    "thumbnail": "https://i.ytimg.com/vi/UfQHEpf2q8k/default.jpg"
  },
  {
    "videoId": "z-cHjLFit0o",
    "title": "Passenger | Space Oddity (David Bowie Cover)",
    "description": "Passenger's new album 'The Boy Who Cried Wolf' is out now! Order CD or Vinyl from https://store.passengermusic.com Stream or Download ...",
    "thumbnail": "https://i.ytimg.com/vi/z-cHjLFit0o/default.jpg"
  },
  {
    "videoId": "FOSUk5PhBa0",
    "title": "Le mie cover ❤Iphone6plus❤ 2#",
    "description": "link del primo video: https://www.youtube.com/watch?v=rNZZgl5cvCc IL MIO NUOVO CANALE: https://www.youtube.com/channel/UCdjnux9-n00lr4pxPjD2l7g ...",
    "thumbnail": "https://i.ytimg.com/vi/FOSUk5PhBa0/default.jpg"
  },
  {
    "videoId": "-NARat4SuE0",
    "title": "Adiós amor - Christian Nodal (Carolina Ross cover)",
    "description": "Conóceme en www.carolinaross.com ! CONTRATACIONES: booking@cimamusicgroup.com Spotify: https://open.spotify.com/artist/5wx70QuZtxRUIIYek3RSaV ...",
    "thumbnail": "https://i.ytimg.com/vi/-NARat4SuE0/default.jpg"
  },
  {
    "videoId": "IVVwSLARXd4",
    "title": "Bên Nhau Thật Khó Cover - Hoàng Lan",
    "description": "Ben khau",
    "thumbnail": "https://i.ytimg.com/vi/IVVwSLARXd4/default.jpg"
  },
  {
    "videoId": "5oCf26Htvrc",
    "title": "Passenger | Angie (The Rolling Stones cover)",
    "description": "Passenger's new album 'The Boy Who Cried Wolf' is out now! Order CD or Vinyl from https://store.passengermusic.com Stream or Download ...",
    "thumbnail": "https://i.ytimg.com/vi/5oCf26Htvrc/default.jpg"
  },
  {
    "videoId": "vXHOorXZ8qY",
    "title": "Me dediqué a perderte -Alejandro Fernández (Cover)",
    "description": "Espero que les guste este cover :) Compartan! Hagan que mi música llegue más lejos, sería increíble.",
    "thumbnail": "https://i.ytimg.com/vi/vXHOorXZ8qY/default.jpg"
  },
  {
    "videoId": "fzxag7U3Snk",
    "title": "Gnarls Barkley - Crazy (Cover) by Daniela Andrade",
    "description": "Listen on Spotify / Apple Music: http://smarturl.it/da-crazy An oldie but a goodie. I've loved this song for a long time and just recently came across TEEMID & Joie ...",
    "thumbnail": "https://i.ytimg.com/vi/fzxag7U3Snk/default.jpg"
  },
  {
    "videoId": "EG05-Y_C4EU",
    "title": "Passenger | Hotel California (The Eagles cover)",
    "description": "Passenger's new album 'The Boy Who Cried Wolf' is out now! Order CD or Vinyl from https://store.passengermusic.com Stream or Download ...",
    "thumbnail": "https://i.ytimg.com/vi/EG05-Y_C4EU/default.jpg"
  },
  {
    "videoId": "fz4MzJTeL0c",
    "title": "Titanium / Pavane (Piano/Cello Cover) - David Guetta / Faure - The Piano Guys",
    "description": "Get our latest album \"UNCHARTED\" here: http://hubs.ly/H04ZSnT0 ▻ WE'RE ON TOUR! http://goo.gl/fmybn0 ▻ DOWNLOAD THIS SONG: http://goo.gl/6XXR6w ...",
    "thumbnail": "https://i.ytimg.com/vi/fz4MzJTeL0c/default.jpg"
  },
  {
    "videoId": "HMOpugiyD2s",
    "title": "Jordin Sparks, Chris Brown - \"No Air\" (cover by Andie Case & Jonny Koch)",
    "description": "iTunes: http://bit.ly/iTunesAndieCase Andie Case & Jonny Koch cover of \"No Air\" by Jordin Sparks & Chris Brown In honor of #ThrowbackThursday Hope you ...",
    "thumbnail": "https://i.ytimg.com/vi/HMOpugiyD2s/default.jpg"
  },
  {
    "videoId": "9e9AyDXx19Q",
    "title": "Gary Moore - The Loner Cover",
    "description": "A big Thanks to Vigier for this new guitar! The Loner played by Tina S (15 y.o) played on her Vigier Excalibur Special Mysterious Green. Facebook page ...",
    "thumbnail": "https://i.ytimg.com/vi/9e9AyDXx19Q/default.jpg"
  },
  {
    "videoId": "I591jvIP2bU",
    "title": "Amorfoda - Bad Bunny | Laura Naranjo cover",
    "description": "Bad Bunny nos sorprendió con una canción que transmite mucho sentimiento y quisimos hacer nuestra versión para hoy. Esperamos que te guste y la ...",
    "thumbnail": "https://i.ytimg.com/vi/I591jvIP2bU/default.jpg"
  },
  {
    "videoId": "NGX474gjYuc",
    "title": "Marshmello & Anne-Marie - FRIENDS (Piano Version) | Sam Tsui, Kirsten Collins, KHS Cover",
    "description": "Turned this song into a chill piano ballad! Hope ya like it :) Download/Stream this track here: http://smarturl.it/nhsFRI oh and the secret word is \"friend\" :P. GET IN ...",
    "thumbnail": "https://i.ytimg.com/vi/NGX474gjYuc/default.jpg"
  },
  {
    "videoId": "5U9dS43-FJo",
    "title": "Meiga e Abusada - Anitta (Cover by Laura Schadeck)",
    "description": "Meiga e Abusada #Anitta #CoverSong #PopMusic #Lauvers Peça o show na sua cidade: http://www.queremos.com.br/lauraschadeck Youtube: ...",
    "thumbnail": "https://i.ytimg.com/vi/5U9dS43-FJo/default.jpg"
  },
  {
    "videoId": "c_qFy5jIEPY",
    "title": "Controlla by Drake | Alex Aiono Cover",
    "description": "If Drake keeps making SMASHES, I am going to keep covering them!!! Can we get this video to 30000 Likes??? DONT LET ME DOWN COVER: ...",
    "thumbnail": "https://i.ytimg.com/vi/c_qFy5jIEPY/default.jpg"
  },
  {
    "videoId": "nJi8iSpzq9I",
    "title": "For The Love Of God - Steve Vai - Cover by Tina S",
    "description": "For The Love Of God ( Steve Vai ) played by Tina S ( 16 y.o ) Facebook :=https://www.facebook.com/Tina-S-181555232026760/?ref=settings Twitter ...",
    "thumbnail": "https://i.ytimg.com/vi/nJi8iSpzq9I/default.jpg"
  },
  {
    "videoId": "-fXokwaMEyQ",
    "title": "G.E.M. 鄧紫棋【光年之外】EDM Cover ( 蔡恩雨 Priscilla Abby )",
    "description": "全新單曲[Burn] MV 即將在2017/11/27 晚上9點播出！！ 請守住Priscilla Abby 蔡恩雨官方臉書及官方Youtube 頻道, 敬請期待! EDM改編/製作: Jaydon Joo祖...",
    "thumbnail": "https://i.ytimg.com/vi/-fXokwaMEyQ/default.jpg"
  },
  {
    "videoId": "6ThQkrXHdh4",
    "title": "twenty one pilots: Can't Help Falling In Love (Cover)",
    "description": "Tyler Joseph of twenty one pilots performs a cover of 'Can't Help Falling In Love' by Elvis with help from some friends on the Nylon Music Tour with Neon Trees ...",
    "thumbnail": "https://i.ytimg.com/vi/6ThQkrXHdh4/default.jpg"
  },
  {
    "videoId": "zYfI6qx2X80",
    "title": "Mabel - Fix You (Coldplay cover) in the Live Lounge",
    "description": "Mabel covers Coldplay's Fix You in the BBC Radio 1 Live Lounge http://vevo.ly/364Rtg.",
    "thumbnail": "https://i.ytimg.com/vi/zYfI6qx2X80/default.jpg"
  },
  {
    "videoId": "Dl6bwKmUNBQ",
    "title": "Ngắm Hoa Lệ Rơi - Bản Cover Bá Đạo tại quán trà đá huyền thoại - Phương Anh",
    "description": "Ngắm Hoa Lệ Rơi - Bản Cover Bá Đạo tại quán trà đá huyền thoại Thể hiện: Phương Anh Sáng tác: Duy Cường Ngắm Hoa Lệ Rơi - Châu Khải Phong [ Lyrics ...",
    "thumbnail": "https://i.ytimg.com/vi/Dl6bwKmUNBQ/default.jpg"
  },
  {
    "videoId": "r0YyR0_SG5k",
    "title": "โลกที่ไม่มีเธอ - Portrait  [cover] TheBroSis",
    "description": "Fanpage : TheBroSis https://www.facebook.com/TheBroSisBand/ Facebook: http://www.facebook.com/fenderT http://www.facebook.com/vichariya Instagram: ...",
    "thumbnail": "https://i.ytimg.com/vi/r0YyR0_SG5k/default.jpg"
  },
  {
    "videoId": "VEX1kO6SBZQ",
    "title": "Ride by twenty one pilots | Alex Aiono Cover",
    "description": "Brought the Uke in for a jam seshhhh!!!! Can we get this video to 40000 likes??? EX GF MASHUP: https://www.youtube.com/watch?v=lVoz90VxQs8 Guys, my ...",
    "thumbnail": "https://i.ytimg.com/vi/VEX1kO6SBZQ/default.jpg"
  },
  {
    "videoId": "aWVi4fPw470",
    "title": "CAMILA CABELLO - NEVER BE THE SAME (Rajiv Dhall Cover)",
    "description": "Loving the new Camila Cabello album. Hope you dig my cover of Never Be The Same. Instagram: https://instagram.com/rajivdhall SUBSCRIBE and join me on ...",
    "thumbnail": "https://i.ytimg.com/vi/aWVi4fPw470/default.jpg"
  },
  {
    "videoId": "3WPZU2ixS5Y",
    "title": "Calvin Harris, Dua lipa- One kiss (Nikita Piven ft. Alex Muse sax cover)",
    "description": "Calvin & Dua the best duo     Summer vibes 100%☀  ☀  ☀   We are a professional saxophone duo. We create exciting new cover versions of hit songs from all ...",
    "thumbnail": "https://i.ytimg.com/vi/3WPZU2ixS5Y/default.jpg"
  },
  {
    "videoId": "GuU_pFgabbQ",
    "title": "รวมเพลง Cover มือลั่น,คนละชั้น,หมดห่วง | มินตรา น่านเจ้า【Cover Version】",
    "description": "ช่องทางติดตาม FB : http://adf.ly/1kEOJp FB Page : http://adf.ly/1kEOQd IG : http://adf.ly/1kEOYB.",
    "thumbnail": "https://i.ytimg.com/vi/GuU_pFgabbQ/default.jpg"
  },
  {
    "videoId": "YAyRYn-CjxY",
    "title": "【라온】 도쿄구울 (東京喰種, Tokyo Ghoul) OP - unravel (vocal cover)",
    "description": "Raon's Youtube :: https://youtube.com/c/raonlee Raon's Twitter :: https://twitter.com/raon_leee Raon's Instagram :: https://instagram.com/raon_lee/ Raon's ...",
    "thumbnail": "https://i.ytimg.com/vi/YAyRYn-CjxY/default.jpg"
  },
  {
    "videoId": "Bt4Xx3vX3Lg",
    "title": "Motörhead - Sympathy For The Devil (Bad Magic 2015) - Rolling Stones Cover",
    "description": "'Sympathy For The Devil'* - the 13th track from the 22nd studio album 'Bad Magic', released on August 28th 2015. *\"Sympathy For The Devil\" by Mick Jagger, ...",
    "thumbnail": "https://i.ytimg.com/vi/Bt4Xx3vX3Lg/default.jpg"
  },
  {
    "videoId": "BkNKg2VVkj0",
    "title": "Phai Dấu Cuộc Tình - Cover",
    "description": "ĐĂNG KÍ KÊNH ỦNG HỘ MÌNH NHÉ!!",
    "thumbnail": "https://i.ytimg.com/vi/BkNKg2VVkj0/default.jpg"
  },
  {
    "videoId": "mOO5qRjVFLw",
    "title": "This is Your Fight Song (Rachel Platten Scottish Cover) - The Piano Guys",
    "description": "Get our latest album \"UNCHARTED\" here: http://hubs.ly/H04ZSnT0 ▻ WE'RE ON TOUR! http://goo.gl/fmybn0 ▻ DOWNLOAD THIS SONG: http://goo.gl/pnPhyD ...",
    "thumbnail": "https://i.ytimg.com/vi/mOO5qRjVFLw/default.jpg"
  },
  {
    "videoId": "6ZoyCSffM7I",
    "title": "All The Small Things (Blink 182 Sad Clown Cover) - Postmodern Jukebox ft. Puddles Pity Party - AGT",
    "description": "Learn More About This Cover: http://bit.ly/pmjsmallthings Get our album \"FAKE BLUES\": https://smarturl.it/pmjfakeblues Get tix to see PMJ on tour near you: ...",
    "thumbnail": "https://i.ytimg.com/vi/6ZoyCSffM7I/default.jpg"
  },
  {
    "videoId": "ZK2jbHacbbM",
    "title": "Passenger | Heart of Gold (Neil Young cover)",
    "description": "Passenger's new album 'The Boy Who Cried Wolf' is out now! Order CD or Vinyl from https://store.passengermusic.com Stream or Download ...",
    "thumbnail": "https://i.ytimg.com/vi/ZK2jbHacbbM/default.jpg"
  },
  {
    "videoId": "tZ7PhQEL3jU",
    "title": "I Fall Apart - Post Malone Cover // Nicole Starr",
    "description": "Fav song atm (: My WEBSITE- https://www.nicolestarrmusic.com/ Email me @nicolestarrhoffpauir@gmail.com ONLY for business inquiries please LISTEN to my ...",
    "thumbnail": "https://i.ytimg.com/vi/tZ7PhQEL3jU/default.jpg"
  },
  {
    "videoId": "gmYL6aPdhzA",
    "title": "INTIM - 15 svenska hits på 5 minuter (cover musikvideo)",
    "description": "Instagram: intimofficial Facebook: https://www.facebook.com/intimofficia... Reservation contact: info@x-clusive.se För samarbetsfrågor: ...",
    "thumbnail": "https://i.ytimg.com/vi/gmYL6aPdhzA/default.jpg"
  },
  {
    "videoId": "trNNye9w4lk",
    "title": "Passenger | Ain't No Sunshine ( Bill Withers Cover)",
    "description": "Passenger's new album 'The Boy Who Cried Wolf' is out now! Order CD or Vinyl from https://store.passengermusic.com Stream or Download ...",
    "thumbnail": "https://i.ytimg.com/vi/trNNye9w4lk/default.jpg"
  },
  {
    "videoId": "NVpgEUTYjgM",
    "title": "Medicare Doesn't Cover Dentistry, but It Should",
    "description": "Subscribe to Healthcare Triage! https://bit.ly/2GlEYWG This video was adapted from a column Austin Frakt wrote for the Upshot. Links to further reading can be ...",
    "thumbnail": "https://i.ytimg.com/vi/NVpgEUTYjgM/default.jpg"
  },
  {
    "videoId": "dCvWlkGPi5s",
    "title": "\"Te Vi Na Rua Ontem\" Mariana Nolasco (cover)",
    "description": "Eai gente, como vcs tão? espero que tenham gostado dessa versão! Nao esquece de me seguir no Spotify pra poder ouvir os singles autorais! to ansiosa ...",
    "thumbnail": "https://i.ytimg.com/vi/dCvWlkGPi5s/default.jpg"
  },
  {
    "videoId": "EP6UVwi52yI",
    "title": "Jason Derulo - Want To Want Me / I Want You To Want Me MASHUP (Andie Case Cover)",
    "description": "Download this song on iTunes! http://hyperurl.co/kebio1 Hey guys it's hard to believe it has almost been exactly one year since our first car cover \"Me & My ...",
    "thumbnail": "https://i.ytimg.com/vi/EP6UVwi52yI/default.jpg"
  },
  {
    "videoId": "dyglnLD2joM",
    "title": "Dancing On My Own - Pentatonix (Robyn Cover)",
    "description": "We just wanted to take a minute to thank you all for your ongoing love and support. It means the world to all of us! “Dancing On My Own” is one of our favorite ...",
    "thumbnail": "https://i.ytimg.com/vi/dyglnLD2joM/default.jpg"
  },
  {
    "videoId": "X3P6dnL2OyY",
    "title": "BLACKPINK - 'PARTITION (Beyonce)' DANCE COVER 0812 SBS PARTY PEOPLE",
    "description": "Copyrightⓒ2017 SBS Contents Hub Co., Ltd. & YG Entertainment Inc. All rights reserved. CHOREOGRAPHY BY : KYLE HANAGAMI ...",
    "thumbnail": "https://i.ytimg.com/vi/X3P6dnL2OyY/default.jpg"
  },
  {
    "videoId": "khCokQt--l4",
    "title": "Chris Brown - Look At Me Now ft. Lil Wayne, Busta Rhymes (Cover by Karmin)",
    "description": "Karmin's cover of \"Look At Me Now\" by Chris Brown ft. Lil Wayne, Busta Rhymes. Download on iTunes / Google Play: http://smarturl.it/KarminLookAtMeNow ...",
    "thumbnail": "https://i.ytimg.com/vi/khCokQt--l4/default.jpg"
  },
  {
    "videoId": "2_P-t0idgqI",
    "title": "Pink Floyd - Comfortably Numb Solo Cover",
    "description": "Comfortably Numb ( solo ) played by Tina S (15 y.o) played on her Vigier Excalibur Custom. Facebook page ...",
    "thumbnail": "https://i.ytimg.com/vi/2_P-t0idgqI/default.jpg"
  },
  {
    "videoId": "9NAK3yfqLN8",
    "title": "Wild Thoughts X Maria Maria - Rihanna, Bryson Tiller & Santana (William Singe Cover)",
    "description": "Official William Singe cover of \"Maria Maria\" by Carlos Santana & \"Wild Thoughts\" by DJ Khaled featuring Rihanna & Bryson Tiller. Subscribe to William Singe: ...",
    "thumbnail": "https://i.ytimg.com/vi/9NAK3yfqLN8/default.jpg"
  },
  {
    "videoId": "3_EmVdOZMho",
    "title": "Closer - The Chainsmokers (ft. Halsey) - acoustic cover",
    "description": "Meine neue Single \"17 KILOMETER\" ist da! ▻ Jetzt anschauen: https://youtu.be/VK-xR6Hycbo + Her channel: https://www.youtube.com/AlyciaMarieMusic NEW ...",
    "thumbnail": "https://i.ytimg.com/vi/3_EmVdOZMho/default.jpg"
  },
  {
    "videoId": "YV5KAbV34NU",
    "title": "Shape of You - Walk off the Earth (Ed Sheeran Cover)",
    "description": "STREAM OR DOWNLOAD THIS VERSION: https://goo.gl/3NKYRb Catch us live! CLICK HERE FOR TICKETS: https://goo.gl/yWgz4b WOTE merch available ...",
    "thumbnail": "https://i.ytimg.com/vi/YV5KAbV34NU/default.jpg"
  },
  {
    "videoId": "Oc2ByRFHzE0",
    "title": "Miley Cyrus - Wrecking Ball (Cover by Eli Lieb)",
    "description": "Available on iTunes! https://itunes.apple.com/album/eli-lieb-covers-vol.-1/id1169247388 SUBSCRIBE so I can always sing to you :) Click here: ...",
    "thumbnail": "https://i.ytimg.com/vi/Oc2ByRFHzE0/default.jpg"
  },
  {
    "videoId": "B57BiTvCg5Y",
    "title": "Sin bandera “Suelta mi mano” Cover",
    "description": "Muchisimas Gracias por todo el apoyo que nos han dado. Siganme en mi istagram: Instagram:https://www.instagram.com/brayton_alexander/ Los invitamos a ...",
    "thumbnail": "https://i.ytimg.com/vi/B57BiTvCg5Y/default.jpg"
  },
  {
    "videoId": "W9LJDwZOprY",
    "title": "No - Pentatonix (Meghan Trainor Cover)",
    "description": "A PENTATONIX CHRISTMAS OUT NOW! ITUNES http://smarturl.it/APentatonixChristmas?IQid=yt | AMAZON http://smarturl.it/APTXMASAMZ?IQid=yt | SPOTIFY ...",
    "thumbnail": "https://i.ytimg.com/vi/W9LJDwZOprY/default.jpg"
  },
  {
    "videoId": "ytRdxITVToQ",
    "title": "Main Duniya Bhula Dunga - Unplugged Cover | Siddharth Slathia | Aashiqui",
    "description": "Main Duniya Bhula Doonga Unplugged Cover | Siddharth Slathia MP3 Download Link: http://bit.ly/MainDuniyaBhulaDoongaCover Cover Credits: Vocals, Music ...",
    "thumbnail": "https://i.ytimg.com/vi/ytRdxITVToQ/default.jpg"
  },
  {
    "videoId": "OmnDEUD9NyI",
    "title": "Hello - Adele (Reggae Cover) - Conkarah and Rosie Delmah",
    "description": "INSTAGRAM: @CONKARAHMUSIC and @ROSIEDELMAH FACEBOOK: @CONKARAH and @ROSIEDELMAH Track produced and mixed by: Baka Solomon ...",
    "thumbnail": "https://i.ytimg.com/vi/OmnDEUD9NyI/default.jpg"
  },
  {
    "videoId": "yDnyXKUsMe4",
    "title": "Perfect - Ed Sheeran (cover by @freecoustic)",
    "description": "Sooooooo.... here it is! after a very long time finally posted another full version cover. i hope you enjoy the video as much as i do ;) ig : @freecoustic email ...",
    "thumbnail": "https://i.ytimg.com/vi/yDnyXKUsMe4/default.jpg"
  },
  {
    "videoId": "SWUOpSGAyKk",
    "title": "Sorry by Justin Bieber | Alex Aiono Cover",
    "description": "IS IT TOO LATE NOW TO SAY SORRY?? Can we get this video to 15000 likes?? FRANK OCEAN DRAKE MASHUP: ...",
    "thumbnail": "https://i.ytimg.com/vi/SWUOpSGAyKk/default.jpg"
  },
  {
    "videoId": "4ANgUxbeXUc",
    "title": "Cam - Palace (Sam Smith Cover)",
    "description": "Cam performing “Palace.” Written by Cam, Sam Smith and Tyler Johnson. Connect with Cam now on Facebook: https://www.facebook.com/camcountry ...",
    "thumbnail": "https://i.ytimg.com/vi/4ANgUxbeXUc/default.jpg"
  },
  {
    "videoId": "cotufkeHkLg",
    "title": "Amor de verdade - Mc Kekel part. Mc Rita | cover acustico Ariel Mançanares",
    "description": "Esse é o meu cover da música \"Amor de verdade\" do Mc Kekel part. Mc Rita ♥ espero que gostem! O link pro evento do show em São Paulo dia 14/04 tá aqui e ...",
    "thumbnail": "https://i.ytimg.com/vi/cotufkeHkLg/default.jpg"
  },
  {
    "videoId": "zlU5jsQi25E",
    "title": "Perfect Duet - Ed Sheeran & Beyonce ('50s Prom Cover) ft. Mario Jose, India Carney & Dave Koz",
    "description": "Postmodern Jukebox '50s prom cover of \"Perfect\" by Ed Sheeran & Beyonce ft. Mario Jose, India Carney & Dave Koz. | Get NEW album \"Jazz Me Outside, Pt. 1\": ...",
    "thumbnail": "https://i.ytimg.com/vi/zlU5jsQi25E/default.jpg"
  },
  {
    "videoId": "48hWGEbBVjw",
    "title": "【라온】NARUTO SHIPPUDEN (ナルト疾風伝) - BLUE BIRD (Vocal Cover)",
    "description": "Vocal & Mixed & Video. 라온 - Raon's Youtube. https://www.youtube.com/c/raonlee - Raon's Twitter. @raon_leee - Raon's Instagram. @raon_lee - Raon's Blog.",
    "thumbnail": "https://i.ytimg.com/vi/48hWGEbBVjw/default.jpg"
  },
  {
    "videoId": "X-XViKG1Moc",
    "title": "Say Something - Shawn Mendes (Cover)",
    "description": "HEEEY GUYS! hows it goin! i hope you enjoy ! http://twitter.com/shawnmendes http://facebook.com/shawnmendesofficial http://instagram.com/shawnmendes.",
    "thumbnail": "https://i.ytimg.com/vi/X-XViKG1Moc/default.jpg"
  },
  {
    "videoId": "Hy8kORiO-_M",
    "title": "鄭茵聲Alina - Cover 手心的薔薇 feat. 木星｜（原唱：林俊傑JJ Lin & G.E.M.鄧紫棋）",
    "description": "鎖定鄭茵聲Alina 的最新影片，趕快訂閱：http://goo.gl/WRoMEa 鎖定這群人的最新影片，趕快訂閱： https://goo.gl/JwbB1p 『這群人TGOP Facebook』：https://www.fac.",
    "thumbnail": "https://i.ytimg.com/vi/Hy8kORiO-_M/default.jpg"
  },
  {
    "videoId": "IuUDRU9-HRk",
    "title": "Chris Cornell \"Nothing Compares 2 U\" Prince Cover Live @ SiriusXM // Lithium",
    "description": "Chris Cornell covers Prince's Nothing Compares 2 U for Lithium. Hear more on SiriusXM, get a free trial: https://siriusxm.us/2D2WhJu Check Out Chris Cornell's ...",
    "thumbnail": "https://i.ytimg.com/vi/IuUDRU9-HRk/default.jpg"
  },
  {
    "videoId": "MRqjOuhZsoY",
    "title": "Comfortably Numb Solo - Pink Floyd - Acoustic Guitar Cover",
    "description": "This my acoustic version of another legendary guitar solo - Comfortably Numb by Pink Floyd. Help me create more content - https://www.patreon.com/acoustician ...",
    "thumbnail": "https://i.ytimg.com/vi/MRqjOuhZsoY/default.jpg"
  },
  {
    "videoId": "La6ePTfimk4",
    "title": "Me niego - Reik ft. Ozuna, Wisin - Xandra Garsem Cover",
    "description": "700.000 GRACIAS!! Hoy os traigo la cover ganadora de la encuesta del vídeo anterior : “Me niego” de Reik ft. Ozuna. Tenía pensado publicarla mañana, pero ...",
    "thumbnail": "https://i.ytimg.com/vi/La6ePTfimk4/default.jpg"
  },
  {
    "videoId": "NA9WA-bdQNg",
    "title": "Me vas a extrañar - Banda MS (Carolina Ross cover)",
    "description": "Conóceme en www.carolinaross.com ! Contacto: info@carolinaross.com Productor: Eric Serrano Piano: Orlando Bustamante Redes sociales: ...",
    "thumbnail": "https://i.ytimg.com/vi/NA9WA-bdQNg/default.jpg"
  },
  {
    "videoId": "kQt9jKDCqHo",
    "title": "Crosby, Stills & Nash - Helplessly Hoping (Home Free Cover)",
    "description": "See Us Sing This Live In Concert: http://flyt.it/HFtour ▻ TIMELESS Is On iTunes: http://flyt.it/hf_timelessdlx_IT?ID=yt ▻ Stream and Download This Song!",
    "thumbnail": "https://i.ytimg.com/vi/kQt9jKDCqHo/default.jpg"
  },
  {
    "videoId": "xKxsX9TCB_I",
    "title": "Take Me To Church (Acoustic Cover)",
    "description": "I've had \"Take Me To Church\" by Hozier on repeat lately. Seriously both his EP's are amazing - if you haven't heard his music, you need to check it out. The lyrics ...",
    "thumbnail": "https://i.ytimg.com/vi/xKxsX9TCB_I/default.jpg"
  },
  {
    "videoId": "P5ehD7p155E",
    "title": "ROCKABYE (Cover) feat. KRNFX",
    "description": "Check Out KRNFX's Channel here: https://www.youtube.com/user/krnfxTV Thanks For watching! Click Here To Join The Family! ▻ http://bit.ly/ehbeefamily Buy ...",
    "thumbnail": "https://i.ytimg.com/vi/P5ehD7p155E/default.jpg"
  },
  {
    "videoId": "eM_FR7I2Ttw",
    "title": "Harry Styles - The Chain (Fleetwood Mac cover) in the Live Lounge",
    "description": "Harry Styles covers Fleetwood Mac's The Chain in the BBC Radio 1 Live Lounge http://vevo.ly/qQP8NA.",
    "thumbnail": "https://i.ytimg.com/vi/eM_FR7I2Ttw/default.jpg"
  },
  {
    "videoId": "XO7JGfqPB0s",
    "title": "The Killers - Run For Cover",
    "description": "Artists: The Killers Directed By: Tarik Mikou Co-Directed By: Eric Morin Written By: Flowers, Stoermer, Vannucci, Price, Cameron, Lee, Marley Producers: ...",
    "thumbnail": "https://i.ytimg.com/vi/XO7JGfqPB0s/default.jpg"
  },
  {
    "videoId": "m6J5fkzbKzE",
    "title": "Ed Sheeran - Perfect",
    "description": "Listen to my new single TETRIS everywhere! - http://red.lnk.to/Tetris Download on iTunes - https://itunes.apple.com/us/album/perfect-single/id1296360658 ...",
    "thumbnail": "https://i.ytimg.com/vi/m6J5fkzbKzE/default.jpg"
  },
  {
    "videoId": "GfjcQuHF67U",
    "title": "Daniela Calvario / Y basta Ya - Olga tañon / Cover",
    "description": "Hola gente preciosa! Este Cover es de una canción algo vieja, pero muy hermosa, me encanta. Y lo hice con mucho amor. Ojalá les guste y me ayuden ...",
    "thumbnail": "https://i.ytimg.com/vi/GfjcQuHF67U/default.jpg"
  },
  {
    "videoId": "93CZ6oFR8Q0",
    "title": "Miley Cyrus covers Summertime Sadness in the Live Lounge",
    "description": "Miley covers Lana Del Rey's Summertime Sadness in the Live Lounge for Fearne Cotton, Grimmy, Annie Mac and Radio 1.",
    "thumbnail": "https://i.ytimg.com/vi/93CZ6oFR8Q0/default.jpg"
  },
  {
    "videoId": "OeYOs8A7Xss",
    "title": "Beautiful Thing by Grace VanderWaal (cover) -junetunes",
    "description": "Thanks so much for watching!! I'm so sorry I'm late!! Happy belated mother's day !!! ALSO IT'S MY BIRTHDAY!!!!!!!!! I'M 16 YAYYYYY. I love doing covers because ...",
    "thumbnail": "https://i.ytimg.com/vi/OeYOs8A7Xss/default.jpg"
  },
  {
    "videoId": "BVzwkn_ilwA",
    "title": "Lorde - \"Royals\" (African Tribal Masquerade Cover) Alex Boye'",
    "description": "Download single here: Available on iTunes now! https://itunes.apple.com/us/album/afr... New Album africanized out now on iTunes ...",
    "thumbnail": "https://i.ytimg.com/vi/BVzwkn_ilwA/default.jpg"
  },
  {
    "videoId": "iIj07LL57RA",
    "title": "A Thousand Years - Christina Perri (Boyce Avenue acoustic cover) on Spotify & Apple",
    "description": "Tickets + VIP Meet & Greets: http://smarturl.it/BATour Spotify: http://smarturl.it/CSV3Spotify1 Apple: http://smarturl.it/CSV3Apple1 iTunes: ...",
    "thumbnail": "https://i.ytimg.com/vi/iIj07LL57RA/default.jpg"
  },
  {
    "videoId": "UngXu2zwF9E",
    "title": "Don't Stop Believin' - Journey (ONE TAKE Vintage Postmodern Jukebox Cover)",
    "description": "Postmodern Jukebox's Vintage One-Take Cover of \"Don't Stop Believin'\" by Journey Get the song: http://smarturl.it/pmjjourney | Subscribe: http://bit.ly/subPMJ ...",
    "thumbnail": "https://i.ytimg.com/vi/UngXu2zwF9E/default.jpg"
  },
  {
    "videoId": "GZYGPn9iN1Y",
    "title": "Say Something - Jazz / Soul A Great Big World Cover ft. Hudson Thames",
    "description": "Download the song on iTunes: http://smarturl.it/shoppmjyt Postmodern Jukebox Tour: Tix: http://smarturl.it/tourpmjyt While we were visiting our friends at Wava ...",
    "thumbnail": "https://i.ytimg.com/vi/GZYGPn9iN1Y/default.jpg"
  },
  {
    "videoId": "0h3NeVv8AGg",
    "title": "Habits (Stay High) | Cover | BILLbilly01 ft. Violette Wautier",
    "description": "Get the song here: https://geo.itunes.apple.com/us/album/best-of-billbilly01/id1167243724?at=10lvFb&mt=1&app=music WE GOTTA STAY HIGH!!! YEAH! and ...",
    "thumbnail": "https://i.ytimg.com/vi/0h3NeVv8AGg/default.jpg"
  },
  {
    "videoId": "UviVYc9qzy4",
    "title": "Somebody That I Used To Know - Vintage '40s Big Band Gotye Cover ft. Hannah Gill",
    "description": "Learn More About This Cover: http://bit.ly/pmjgotye Download this song: smarturl.it/pmjwhodis Get tix to see PMJ on tour worldwide: http://smarturl.it/tourpmjyt ...",
    "thumbnail": "https://i.ytimg.com/vi/UviVYc9qzy4/default.jpg"
  },
  {
    "videoId": "BbD0B3dzxDM",
    "title": "Dark Horse (Acoustic Cover)",
    "description": "Been listening to Katy Perry's new album a ton. So when Jaclyn visited over the weekend, we knew we wanted to cover this song. So here's us channeling our ...",
    "thumbnail": "https://i.ytimg.com/vi/BbD0B3dzxDM/default.jpg"
  },
  {
    "videoId": "LT7MOirwZdM",
    "title": "Hello - Walk off the Earth + Myles & Isaac (Tap Dance Cover)",
    "description": "STREAM OR DOWNLOAD HELLO HERE: https://goo.gl/bVPiDE Myles Erlick and Isaac Lupien from \"The Next Step\" came by for dinner the other night.",
    "thumbnail": "https://i.ytimg.com/vi/LT7MOirwZdM/default.jpg"
  },
  {
    "videoId": "PGoCtJzPHkU",
    "title": "Titanium - David Guetta ft. Sia - Official Acoustic Music Video - Madilyn Bailey - on iTunes",
    "description": "Listen to my new single TETRIS everywhere! - http://red.lnk.to/Tetris DEBUT ORIGINAL ALBUM: ...",
    "thumbnail": "https://i.ytimg.com/vi/PGoCtJzPHkU/default.jpg"
  },
  {
    "videoId": "-evuKPEp3KE",
    "title": "Adele - Hello (African Tribal \"Star Wars\" Cover) ft. Alex Boye'",
    "description": "DOWNLOAD SONG HERE: http://bit.ly/1lLp9hy Subscribe to my channel here: http://bit.ly/1TMVdMs Jambo my friends! What happens when you combine 2 of ...",
    "thumbnail": "https://i.ytimg.com/vi/-evuKPEp3KE/default.jpg"
  },
  {
    "videoId": "9zBxAvjznQQ",
    "title": "Passenger | Girl From The North Country (Bob Dylan Cover)",
    "description": "Passenger's new album 'The Boy Who Cried Wolf' is out now! Order CD or Vinyl from https://store.passengermusic.com Stream or Download ...",
    "thumbnail": "https://i.ytimg.com/vi/9zBxAvjznQQ/default.jpg"
  },
  {
    "videoId": "E0wW9RwpG7M",
    "title": "Bryan Adams - Heaven (Boyce Avenue feat. Megan Nicole acoustic cover) on Spotify & Apple",
    "description": "Tickets + VIP Meet & Greets: http://smarturl.it/BATour Spotify: http://smarturl.it/CSV2Spotify1 Apple: http://smarturl.it/CSV2Apple1 iTunes: ...",
    "thumbnail": "https://i.ytimg.com/vi/E0wW9RwpG7M/default.jpg"
  },
  {
    "videoId": "aE2GCa-_nyU",
    "title": "Radioactive - Lindsey Stirling and Pentatonix (Imagine Dragons Cover)",
    "description": "Purchase my album Shatter Me on iTunes: http://smarturl.it/ShatterMe And get my new album Warmer in the Winter here: Target Exclusive: ...",
    "thumbnail": "https://i.ytimg.com/vi/aE2GCa-_nyU/default.jpg"
  },
  {
    "videoId": "C0kxrtf6UMg",
    "title": "Bausa  - Was Du Liebe nennst (cover)",
    "description": "Heute mal etwas Neues. Wie gefällt es euch? Download: https://soundcloud.com/user-235530283/bausa-was-du-liebe-nennst-cover Credits: Musik/Produzent: ...",
    "thumbnail": "https://i.ytimg.com/vi/C0kxrtf6UMg/default.jpg"
  },
  {
    "videoId": "C0IgknAsmdk",
    "title": "Naff - Akhirnya Ku Menemukanmu | Live Cover By Nufi Wardhana",
    "description": "Original Music by Naff Live Covered by Nufi Wardhana https://youtu.be/C0IgknAsmdk ▻Hello.. We are female vocal group From Yogyakarta - Indonesia.",
    "thumbnail": "https://i.ytimg.com/vi/C0IgknAsmdk/default.jpg"
  },
  {
    "videoId": "_MjrI6UCDjM",
    "title": "CLOSER Chainsmokers Cover by Sejal Kumar",
    "description": "Hey Guys! My brother and I recorded an old favourite: Closer by Chainsmokers while on my trip to NYC! Do share this and SUBSCRIBE if you enjoy!",
    "thumbnail": "https://i.ytimg.com/vi/_MjrI6UCDjM/default.jpg"
  },
  {
    "videoId": "6Pxoh4YUxxc",
    "title": "Pony - Ginuwine (William Singe Cover)",
    "description": "Download on: iTunes: http://apple.co/1l7BYlH / Amazon: http://amzn.to/1QwX2xn Official video for Australia based singer, songwriter and producer William ...",
    "thumbnail": "https://i.ytimg.com/vi/6Pxoh4YUxxc/default.jpg"
  },
  {
    "videoId": "CNfW7yQUY-o",
    "title": "มือลั่น - JSPKK [ Keesamus cover ]",
    "description": "https://www.facebook.com/keesamus ไม่รู้ รู้สึก ไม่ได้ดีเท่าไหร่ คหสต.",
    "thumbnail": "https://i.ytimg.com/vi/CNfW7yQUY-o/default.jpg"
  },
  {
    "videoId": "1B4pZBmI_gU",
    "title": "Yngwie Malmsteen - Arpeggios From Hell - Tina S Cover",
    "description": "Arpeggios From Hell played by Tina S played on her Vigier Excalibur Custom. Facebook page ...",
    "thumbnail": "https://i.ytimg.com/vi/1B4pZBmI_gU/default.jpg"
  },
  {
    "videoId": "9MoTBIS18QQ",
    "title": "everybody gets a kitten - jeremy messersmith cover",
    "description": "song is by jeremy messersmith! go check him out!!! and listen to the lovely original lol main music channel: http://youtube.com/doddleoddle vevo: ...",
    "thumbnail": "https://i.ytimg.com/vi/9MoTBIS18QQ/default.jpg"
  },
  {
    "videoId": "4ReSV3CCRzg",
    "title": "Barbie Girl - Vintage Beach Boys - Style Aqua Cover ft. Morgan James",
    "description": "Get this song: http://smarturl.it/shoppmjyt Tix: http://smarturl.it/tourpmjyt This one pretty much speaks for itself... Scott Bradlee's Postmodern Jukebox: ...",
    "thumbnail": "https://i.ytimg.com/vi/4ReSV3CCRzg/default.jpg"
  },
  {
    "videoId": "XhrHP-T4sv8",
    "title": "Maula Mere Maula (Ankhen Teri) | Cover by Anish Mathew | Anwar | HD Video",
    "description": "Anish Mathew from Happydemic has recreated the popular song “Maula Mere Maula” from the movie Anwar in his mesmerizing voice. Anish's rendition of this ...",
    "thumbnail": "https://i.ytimg.com/vi/XhrHP-T4sv8/default.jpg"
  },
  {
    "videoId": "_1pUqmaPsFA",
    "title": "Halsey covers Justin Bieber's 'Love Yourself' for triple j's Like A Version",
    "description": "Halsey channels her inner-belieber in the Like A Version studio and covers Justin Bieber's 'Love Yourself'. Subscribe: http://tripj.net/151BPk6 Like A Version is a ...",
    "thumbnail": "https://i.ytimg.com/vi/_1pUqmaPsFA/default.jpg"
  },
  {
    "videoId": "Wx20axMNnAk",
    "title": "Te Boté REMIX (Cover) Bayron Mendez",
    "description": "Familia por aquí les dejo mi versión acústica de Te Boté REMIX. Espero que les guste mucho :) Recuerda dejar tu like, comentario y SUSCRIBIRTE al canal ...",
    "thumbnail": "https://i.ytimg.com/vi/Wx20axMNnAk/default.jpg"
  },
  {
    "videoId": "UXS52TSweKc",
    "title": "All of Me - Vintage Soul John Legend Cover ft. Kiah Victoria",
    "description": "Get the song here: http://smarturl.it/shoppmjyt Meet Kiah Victoria. She's only 21 years old, but with a voice like that, she's going to be a huge star. I first heard her ...",
    "thumbnail": "https://i.ytimg.com/vi/UXS52TSweKc/default.jpg"
  },
  {
    "videoId": "zEmTkXr9Ssg",
    "title": "Missy Higgins covers Gotye's 'Hearts A Mess' for Like A Version",
    "description": "Missy Higgins covers the biggest name in Ausralian music right now, her pal Gotye, with this stunning Like A Version cover of \"Hearts A Mess\".",
    "thumbnail": "https://i.ytimg.com/vi/zEmTkXr9Ssg/default.jpg"
  },
  {
    "videoId": "tcNuPheBQgU",
    "title": "Creep - Radiohead - FUNK cover!",
    "description": "A funk cover of Creep by Scary Pockets. Musicians Vocals: India Carney Bass: Sam Wilkes Drums: Lemar Carter Guitar: Ryan Lerman Wurlitzer: Jack Conte ...",
    "thumbnail": "https://i.ytimg.com/vi/tcNuPheBQgU/default.jpg"
  },
  {
    "videoId": "xzPnzfMIl04",
    "title": "Ventino - Que Hubiera Sido (Cover Meli G ft. Patricio Gala)",
    "description": "SUSCRIBETE Y ACTIVA LAS NOTIFICACIONES MELOVERSSSSS!!!! Muy feliz de presentarles este cover de un grupo femenino colombiano que me gusta ...",
    "thumbnail": "https://i.ytimg.com/vi/xzPnzfMIl04/default.jpg"
  },
  {
    "videoId": "uPwuduhx0vw",
    "title": "Beyonce - \"Pretty Hurts (Chloe x Halle Cover)\"",
    "description": "our debut album the #thekidsarealright is out now: http://smarturl.it/TKAA watch the full official short film here: http://smarturl.it/TKAAalbumfilm ---- Listen to our ...",
    "thumbnail": "https://i.ytimg.com/vi/uPwuduhx0vw/default.jpg"
  },
  {
    "videoId": "v87OIHCMKMM",
    "title": "Location by Khalid | Alex Aiono Cover Ft. William Singe",
    "description": "Watch me mentor an up & coming musician in my episode of Made To Move on www.youtube.com/awesomenesstv starting on 8/1/17. This video is sponsored ...",
    "thumbnail": "https://i.ytimg.com/vi/v87OIHCMKMM/default.jpg"
  },
  {
    "videoId": "Uykdd261LcA",
    "title": "Háblame de ti - Banda MS (Cover de LUCAH)",
    "description": "Te recomiendo: \"Lucah - Se Te Olvidó (Video Oficial)\" https://www.youtube.com/watch?v=wOdjVBe4GX8 --~-- Somos Luis Fer y Carlos Colosio. Síguenos en: ...",
    "thumbnail": "https://i.ytimg.com/vi/Uykdd261LcA/default.jpg"
  },
  {
    "videoId": "NHB8-uWsu3I",
    "title": "Amandote ( Anna Carina) - Cover by Alvaro Cooper feat Diana Salas",
    "description": "Alvaro Cooper Facebook https://www.facebook.com/AlvaroCooper?fref=ts Alvaro Cooper Tiwter https://twitter.com/CooperAlvaro Alvaro Cooper Instagram ...",
    "thumbnail": "https://i.ytimg.com/vi/NHB8-uWsu3I/default.jpg"
  },
  {
    "videoId": "VExXvlTW4V4",
    "title": "LA MIA MEGA COLLEZIONE DI COVER!! Lady Giorgia ✿",
    "description": "Iscrivetevi ed attivate le notifiche qua sopra ↑ cliccando sulla campanella così non perdete gli ultimi video!♥ ✿ Seguimi anche su Instagram: ...",
    "thumbnail": "https://i.ytimg.com/vi/VExXvlTW4V4/default.jpg"
  },
  {
    "videoId": "RMQgikROUUs",
    "title": "奏 / スキマスイッチ (cover)",
    "description": "奏／スキマスイッチ (cover) ▷一週間フレンズ。 スキマスイッチ さんの『奏』を カバーさせていただきました.",
    "thumbnail": "https://i.ytimg.com/vi/RMQgikROUUs/default.jpg"
  },
  {
    "videoId": "n-BXNXvTvV4",
    "title": "\"Beauty And A Beat\" - Justin Bieber (Alex Goot, Kurt Schneider, and Chrissy Costanza Cover)",
    "description": "SUBSCRIBE! I promise, it's fun :1 http://bit.ly/SubscribeKHS iTunes Download: http://msclvr.co/NyAkPr Google Play: http://smarturl.it/dg-baab Stream from ...",
    "thumbnail": "https://i.ytimg.com/vi/n-BXNXvTvV4/default.jpg"
  },
  {
    "videoId": "VI4ssGtfdxw",
    "title": "Roxanne (Cover) - AnnenMayKantereit & Milky Chance",
    "description": "Juhu! Unser Album \"Alles Nix Konkretes\" ist nun veröffentlicht. Vinyl, CD: http://bit.ly/1jlC9bz - http://bit.ly/1jlChI0 Digital: http://bit.ly/1POZX3q ...",
    "thumbnail": "https://i.ytimg.com/vi/VI4ssGtfdxw/default.jpg"
  },
  {
    "videoId": "Z7R8XRKqHAI",
    "title": "Hey Ya! - Walk off the Earth (Outkast Cover)",
    "description": "Stream or Download HEY YA here: https://goo.gl/YRmPcF Catch us live! CLICK HERE FOR TICKETS: https://goo.gl/yWgz4b WOTE merch available here: ...",
    "thumbnail": "https://i.ytimg.com/vi/Z7R8XRKqHAI/default.jpg"
  },
  {
    "videoId": "esrZC27CI8A",
    "title": "Probablemente - Christian Nodal (Cover Vielka)",
    "description": "Espero les guste! ❤️",
    "thumbnail": "https://i.ytimg.com/vi/esrZC27CI8A/default.jpg"
  },
  {
    "videoId": "BGCh_aQCzhY",
    "title": "Shawn Mendes - \"Drag Me Down\" (One Direction Cover)",
    "description": "http://twitter.com/shawnmendes http://instagram.com/shawnmendes http://facebook.com/shawnmendesofficial.",
    "thumbnail": "https://i.ytimg.com/vi/BGCh_aQCzhY/default.jpg"
  },
  {
    "videoId": "MH9FyLsfDzw",
    "title": "Toto - Africa (metal cover by Leo Moracchioli feat. Rabea & Hannah)",
    "description": "Rabea´s channel: http://youtube.com/rabeaafro Hannah´s channel: http://youtube.com/hannahboulton You can buy my albums or singles here: DIRECT FROM ...",
    "thumbnail": "https://i.ytimg.com/vi/MH9FyLsfDzw/default.jpg"
  },
  {
    "videoId": "inlAYYs2M1A",
    "title": "Deixa ela beijar - Kevinho feat Matheus e Kauan (Cover Carol e Vitória Marcilio)",
    "description": "Se chegar em 100k de like a gente posta a resposta dessa música essa semana Ainda!! Deixa seu like.",
    "thumbnail": "https://i.ytimg.com/vi/inlAYYs2M1A/default.jpg"
  },
  {
    "videoId": "Pf_ldxntwJg",
    "title": "Ed Sheeran covers Christina Aguilera's Dirrty in the Live Lounge",
    "description": "Ed Sheeran covers Christina Aguilera's Dirrty in the Live Lounge for Fearne Cotton and BBC Radio 1. Check out the whole Live Lounge special here ...",
    "thumbnail": "https://i.ytimg.com/vi/Pf_ldxntwJg/default.jpg"
  },
  {
    "videoId": "PCj6eyitYNo",
    "title": "Passenger | A Change is Gonna Come (Sam Cooke cover)",
    "description": "Passenger's new album 'The Boy Who Cried Wolf' is out now! Order CD or Vinyl from https://store.passengermusic.com Stream or Download ...",
    "thumbnail": "https://i.ytimg.com/vi/PCj6eyitYNo/default.jpg"
  },
  {
    "videoId": "C9u5nHlqpLk",
    "title": "\"Stronger than me\" cover by DELUXE",
    "description": "http://deluxemoustacheshop.com •FaceBook : https://www.facebook.com/Deluxe.chinesemanrecords •Instagram : https://instagram.com/deluxemoustache ...",
    "thumbnail": "https://i.ytimg.com/vi/C9u5nHlqpLk/default.jpg"
  },
  {
    "videoId": "u9UFhEifTEg",
    "title": "Fleetwood Mac - Dreams (cover) by Dana Williams and Leighton Meester",
    "description": "www.danawilliamsofficial.com Dana Williams and Leighton Meester cover \"Dreams\" originally performed by Fleetwood Mac. Percussion by Maxwell Drummey.",
    "thumbnail": "https://i.ytimg.com/vi/u9UFhEifTEg/default.jpg"
  },
  {
    "videoId": "J06yQb4lbPk",
    "title": "Motörhead  \"Heroes\"  (David Bowie Cover)",
    "description": "Motörhead to release Under Cöver in September 2017 Covers compilation to include new version of David Bowie's “Heroes”, (above) ONE THING Lemmy ...",
    "thumbnail": "https://i.ytimg.com/vi/J06yQb4lbPk/default.jpg"
  },
  {
    "videoId": "-JHOmUM5iUI",
    "title": "EL AMANTE - NICKY JAM (PIANO COVER - CAROLINA GARCÍA Y SERGIO LÓPEZ) #bestcoverever",
    "description": "Nueva cover version piano acustico de la cancion El Amante de Nicky Jam. YA EN SPOTIFY! https://open.spotify.com/track/1XjxgdgIO9odhilmMA0YoG Piano: ...",
    "thumbnail": "https://i.ytimg.com/vi/-JHOmUM5iUI/default.jpg"
  },
  {
    "videoId": "Y8ER-d73yvo",
    "title": "❤️ เธอไม่เคยเป็นแฟนเก่า - Dr.Fuu 🎧 Cover By อาลาแต ^^ ❤️",
    "description": "https://www.facebook.com/kratae.zaa.7 ...",
    "thumbnail": "https://i.ytimg.com/vi/Y8ER-d73yvo/default.jpg"
  },
  {
    "videoId": "9_abddn-aos",
    "title": "[MS89] Yêu Một Người Vô Tâm Cover - Hồng Đào",
    "description": "[MS89] Yêu Một Người Vô Tâm Cover - Hồng Đào Các bạn xem xong nhớ like và share cho Bảo Anh nhé! Đừng quên click subscribe kênh YouTube của Bảo ...",
    "thumbnail": "https://i.ytimg.com/vi/9_abddn-aos/default.jpg"
  },
  {
    "videoId": "P95_pCbCPZw",
    "title": "[Official Video] Cheerleader – Pentatonix (OMI Cover)",
    "description": "A PENTATONIX CHRISTMAS TOUR - 2017 GET YOUR TICKETS AND VIP NOW! http://ptxofficial.com/tour A PENTATONIX CHRISTMAS DELUXE ALBUM ...",
    "thumbnail": "https://i.ytimg.com/vi/P95_pCbCPZw/default.jpg"
  },
  {
    "videoId": "UjzENV7rhhI",
    "title": "Emotions - Ariana Grande (Mariah Carey cover)",
    "description": "Available for free download here: http://soundcloud.com/ariana-grande-official/emotions-ariana-grande-mariah This is an homage to my idol and inspiration ...",
    "thumbnail": "https://i.ytimg.com/vi/UjzENV7rhhI/default.jpg"
  },
  {
    "videoId": "DXEj_IZmUKU",
    "title": "Shameless - The Weeknd (cover)",
    "description": "The Weeknds next single if it was up to me !! :) Spotify: https://open.spotify.com/track/0Ye3S8tDHNayRrzS6L4Kdf iTunes: ...",
    "thumbnail": "https://i.ytimg.com/vi/DXEj_IZmUKU/default.jpg"
  },
  {
    "videoId": "_7TMluHVx4Y",
    "title": "BLACKPINK - 'SURE THING (Miguel)' COVER 0812 SBS PARTY PEOPLE",
    "description": "Copyrightⓒ2017 SBS Contents Hub Co., Ltd. & YG Entertainment Inc. All rights reserved. [BLACKPINK - 'SURE THING (Miguel)' COVER 0812 SBS PARTY ...",
    "thumbnail": "https://i.ytimg.com/vi/_7TMluHVx4Y/default.jpg"
  },
  {
    "videoId": "CFX8VJUtDgY",
    "title": "Imagine Dragons - Blank Space (Taylor Swift cover in the Live Lounge)",
    "description": "Imagine Dragons cover Taylor Swift's Blank Space in the Live Lounge http://vevo.ly/kGmGpu.",
    "thumbnail": "https://i.ytimg.com/vi/CFX8VJUtDgY/default.jpg"
  },
  {
    "videoId": "MLrC7e3vSv8",
    "title": "Africa (acoustic Toto cover) - Mike Massé and Jeff Hall",
    "description": "Africa by Toto, an acoustic cover performed by Mike Massé and Jeff Hall on 8/7/10, at the Pie Pizzeria in South Jordan, Utah. Available on iTunes: ...",
    "thumbnail": "https://i.ytimg.com/vi/MLrC7e3vSv8/default.jpg"
  },
  {
    "videoId": "mW0T0F7VquA",
    "title": "Gold – Pentatonix (Kiiara Cover)",
    "description": "A PENTATONIX CHRISTMAS OUT NOW! ITUNES http://smarturl.it/APentatonixChristmas?IQid=yt | AMAZON http://smarturl.it/APTXMASAMZ?IQid=yt | SPOTIFY ...",
    "thumbnail": "https://i.ytimg.com/vi/mW0T0F7VquA/default.jpg"
  },
  {
    "videoId": "-onQcF95pfs",
    "title": "My Immortal - Evanescence - Lindsey Stirling cover",
    "description": "My Exclusive Deluxe Album featuring \"My Immortal\" is available at Target! www.smarturl.it/LindseyStirlingTAR Get the sheet music here: ...",
    "thumbnail": "https://i.ytimg.com/vi/-onQcF95pfs/default.jpg"
  },
  {
    "videoId": "yw6i1SAHetc",
    "title": "twenty one pilots: Cancer (Cover) [LYRIC VIDEO]",
    "description": "twenty one pilots' official lyric video for their cover of My Chemical Romance's song 'Cancer' from Rock Sound Presents: The Black Parade available now.",
    "thumbnail": "https://i.ytimg.com/vi/yw6i1SAHetc/default.jpg"
  },
  {
    "videoId": "mYKLvYGqaC0",
    "title": "Kids Cover 46 and 2 by Tool / O'Keefe Music Foundation",
    "description": "O'Keefe Music Foundation: http://www.okmusicfoundation.org/ You can buy the kids' version of \"46 and 2\" here: https://okeefemusicfoundation.bandcamp.com/ ...",
    "thumbnail": "https://i.ytimg.com/vi/mYKLvYGqaC0/default.jpg"
  },
  {
    "videoId": "Mc-TQm6lQk8",
    "title": "HALO ( FRENCH VERSION ) BEYONCE ( SARA'H COVER )",
    "description": "C'est une des plus belles chansons je crois, et Beyonce une des plus belles voix de cette génération ❤   J'ai voulu humblement l'adapter car vous avez été très ...",
    "thumbnail": "https://i.ytimg.com/vi/Mc-TQm6lQk8/default.jpg"
  },
  {
    "videoId": "COMvxYPfFFY",
    "title": "Taylor Swift -  September (Earth, Wind and Fire cover)",
    "description": "The cover was recorded at Nashville's Tracking Room Studios Earth, Wind & Fire Co-Writer Allee Willis: \"Taylor Swift is the absolute cherry on top of a very ...",
    "thumbnail": "https://i.ytimg.com/vi/COMvxYPfFFY/default.jpg"
  },
  {
    "videoId": "L6X0PqIWfzQ",
    "title": "LP - Halo (Beyonce Cover) [Live]",
    "description": "2012 WMG \"Halo\" by Beyonce, performed by LP, live at EastWest Studios. Download \"Halo\" for free, here: http://emailunlock.com/whoislp/lp-halo Get 'Into The ...",
    "thumbnail": "https://i.ytimg.com/vi/L6X0PqIWfzQ/default.jpg"
  },
  {
    "videoId": "LtQUJMBH8uE",
    "title": "Adele - Hello (metal cover by Leo Moracchioli)",
    "description": "Check out Pete Cottrell´s channel here: https://www.youtube.com/peteplaysmusic How to play this song on guitar: http://bit.ly/2sZUnbd You can buy my albums ...",
    "thumbnail": "https://i.ytimg.com/vi/LtQUJMBH8uE/default.jpg"
  },
  {
    "videoId": "cyOqIKGbYkg",
    "title": "Sleeping With Sirens - Iris (Goo Goo Dolls Cover)",
    "description": "Sleeping With Sirens perform an acoustic version of 'Iris' originally by the Goo Goo Dolls from the acoustic EP, If You Were A Movie, This Would Be Your ...",
    "thumbnail": "https://i.ytimg.com/vi/cyOqIKGbYkg/default.jpg"
  },
  {
    "videoId": "kNgRiGAtjDo",
    "title": "Ekin Beril - Ben Nasıl Büyük Adam Olucam ( Pinhani ) Cover",
    "description": "Bir gün erkekler kadın hakları için mücadele ettiklerinde ; biz kadınlar özgürce yaşayabileceğiz. Ve o gün, hepimiz büyük adam olacağız . Dünya emekçi kadınlar ...",
    "thumbnail": "https://i.ytimg.com/vi/kNgRiGAtjDo/default.jpg"
  },
  {
    "videoId": "NrATiVB_cNo",
    "title": "Ece Mumay - Affet (Müslüm Gürses Cover)",
    "description": "Benim için çok özel bir parça, umarım beğenirsiniz:) Nisan ayının son videosu! -Instagram | ecemumay -Twitter | ecemumay13 -Mail | ecemumayy@gmail.com ...",
    "thumbnail": "https://i.ytimg.com/vi/NrATiVB_cNo/default.jpg"
  },
  {
    "videoId": "_qPLDCm9Zcw",
    "title": "CAPAREZZA -COVER (video ufficiale)",
    "description": "\"Cover\" anticipa MUSEICA il nuovo album di inediti in uscita il 22 Aprile 2014 Regia : Gianluca Calu Montesano Produzione: Gianluca Calu Montesano ...",
    "thumbnail": "https://i.ytimg.com/vi/_qPLDCm9Zcw/default.jpg"
  },
  {
    "videoId": "XZ3OLswKKAw",
    "title": "GANGNAM STYLE | PSY (Jayesslee Cover)",
    "description": "Hi guys, Happy New Year 2013! Some say that PSY's Gangnam Style was sooo 2012, but we couldn't help but cover this crazy hit song. Let us know what you ...",
    "thumbnail": "https://i.ytimg.com/vi/XZ3OLswKKAw/default.jpg"
  },
  {
    "videoId": "1boUYB9LFJY",
    "title": "Enter Sandman - METALLICA Cover - The Warning",
    "description": "Visit our website!! - http://thewarningband.com/ The Warning Daniela - Guitar - 14 yrs old Paulina - Drums - 12 yrs old Alejandra - Bass Guitar - 9 yrs old Please ...",
    "thumbnail": "https://i.ytimg.com/vi/1boUYB9LFJY/default.jpg"
  },
  {
    "videoId": "gXfnrEguhxA",
    "title": "Darude - Sandstorm (Potato Cover)",
    "description": "I play Sandstorm by Darude aka. Ville Virtanen on a potato. Thank you Ville for the music and the work you do but also this track that we all LOVE!! BUY MY ...",
    "thumbnail": "https://i.ytimg.com/vi/gXfnrEguhxA/default.jpg"
  },
  {
    "videoId": "OlqEj3TcAEI",
    "title": "Sara Bareilles - Chandelier (Sia Cover) - Charlottesville, VA",
    "description": "Amazing cover of Chandelier by Sara, July 12, 2014. ntelos wireless pavilion.",
    "thumbnail": "https://i.ytimg.com/vi/OlqEj3TcAEI/default.jpg"
  },
  {
    "videoId": "chrXnvNmT60",
    "title": "Tak Tun Tuang ( ต๊ะ ตุง ตวง) - Upiak Isilon [ Keesamus cover ]",
    "description": "https://www.facebook.com/keesamus/ นั่นละฮ่ะ เต้นมากไปนะ คือดนตรีต้นฉบับเนี้ยจะทำคีย์สูงไป...",
    "thumbnail": "https://i.ytimg.com/vi/chrXnvNmT60/default.jpg"
  },
  {
    "videoId": "QgaTQ5-XfMM",
    "title": "Christina Perri - A Thousand Years (Piano/Cello Cover) - The Piano Guys",
    "description": "Get our latest album \"UNCHARTED\" here: http://hubs.ly/H04ZSnT0 ▻ WE'RE ON TOUR! http://goo.gl/fmybn0 ▻ DOWNLOAD THIS SONG: http://goo.gl/6XXR6w ...",
    "thumbnail": "https://i.ytimg.com/vi/QgaTQ5-XfMM/default.jpg"
  },
  {
    "videoId": "d2RZXeQc5HU",
    "title": "Highway to hell - AC/DC (cover) Jess Greenberg",
    "description": "Facebook: https://www.facebook.com/jessgreenberg1 Twitter: @JessGreenberg9 Website: http://www.JessGreenbergMusic.com Instagram: ...",
    "thumbnail": "https://i.ytimg.com/vi/d2RZXeQc5HU/default.jpg"
  },
  {
    "videoId": "vsvlsuLau5c",
    "title": "Sexy and I Know It by LMFAO - Noah Guthrie Cover",
    "description": "http://only1noah.com Noah Guthrie Covers Sexy and I Know It by LMFAO - Purchase my album here: ...",
    "thumbnail": "https://i.ytimg.com/vi/vsvlsuLau5c/default.jpg"
  },
  {
    "videoId": "3ANQl-Sbwpo",
    "title": "Thinkin Bout You (Acoustic/Beatbox Cover) - Tori Kelly & Angie Girl",
    "description": "GET MY EP \"HANDMADE SONGS BY TORI KELLY\" ~ ITUNES: http://bit.ly/J9b9o4 AMAZON: http://amzn.com/B0080NN4O8 Thank you so much for supporting ...",
    "thumbnail": "https://i.ytimg.com/vi/3ANQl-Sbwpo/default.jpg"
  },
  {
    "videoId": "VBmCJEehYtU",
    "title": "Royals - (\"Sad Clown With The Golden Voice\") - Postmodern Jukebox Lorde Cover ft. Puddles Pity Party",
    "description": "Get this cover: http://smarturl.it/EssentialsPMJ Sheet Music: http://bit.ly/RoyalsSheet Tix / Music / Merch: http://smarturl.it/pmjwebyt Help us make more ...",
    "thumbnail": "https://i.ytimg.com/vi/VBmCJEehYtU/default.jpg"
  },
  {
    "videoId": "XpASSx0ecTU",
    "title": "Dragon Force - Through the Fire and Flames - Tina S Cover",
    "description": "Through the fire and flames ( Dragon Force ) played by Tina S ( 15 y.o ), played on her Vigier Excalibur Custom Facebook ...",
    "thumbnail": "https://i.ytimg.com/vi/XpASSx0ecTU/default.jpg"
  },
  {
    "videoId": "DAJYk1jOhzk",
    "title": "Let It Go - Frozen - Alex Boyé (Africanized Tribal Cover) Ft. One Voice Children's Choir",
    "description": "WATCH ALEX BOYE'S BRAND NEW VIDEO SHOT AT THE SAME LOCATION 3 YEARS LATER! https://youtu.be/-lDysX2AQKU Get the album \"Africanized\" on ...",
    "thumbnail": "https://i.ytimg.com/vi/DAJYk1jOhzk/default.jpg"
  },
  {
    "videoId": "hOKuAigsrec",
    "title": "Somebody That I Used To Know - Pentatonix (Gotye cover)",
    "description": "A PENTATONIX CHRISTMAS OUT NOW! ITUNES http://smarturl.it/APentatonixChristmas?IQid=yt | AMAZON http://smarturl.it/APTXMASAMZ?IQid=yt | SPOTIFY ...",
    "thumbnail": "https://i.ytimg.com/vi/hOKuAigsrec/default.jpg"
  },
  {
    "videoId": "czb_CZfWko8",
    "title": "I Prevail - Blank Space (Taylor Swift Cover) - Punk Goes Pop Vol. 6",
    "description": "Download our new album 'Lifelines' here - http://smarturl.it/iplifelines Download our cover here - http://smarturl.it/IPblankspace Go to http://IPrevailBand.com for ...",
    "thumbnail": "https://i.ytimg.com/vi/czb_CZfWko8/default.jpg"
  },
  {
    "videoId": "dHtwZ07N1ic",
    "title": "Rolling In The Deep Cover [Live from iTunes Festival 2011] - Linkin Park",
    "description": "Linkin Park performing \"Rolling In The Deep\" cover live at the 2011 iTunes Festival in London. http://www.linkinpark.com | http://LPUnderground.com iTunes: ...",
    "thumbnail": "https://i.ytimg.com/vi/dHtwZ07N1ic/default.jpg"
  },
  {
    "videoId": "E9XQ2MdNgKY",
    "title": "[Official Video] Royals - Pentatonix (Lorde Cover)",
    "description": "A PENTATONIX CHRISTMAS OUT NOW! ITUNES http://smarturl.it/APentatonixChristmas?IQid=yt | AMAZON http://smarturl.it/APTXMASAMZ?IQid=yt | SPOTIFY ...",
    "thumbnail": "https://i.ytimg.com/vi/E9XQ2MdNgKY/default.jpg"
  },
  {
    "videoId": "d_NS9Vd1sMA",
    "title": "Bob Dylan Don't Think Twice, It's All Right Cover - Austin Richard",
    "description": "Bob Dylan Don't Think Twice, It's All Right Cover - Austin Richard Excuse my hair haha. Thanks for watching.",
    "thumbnail": "https://i.ytimg.com/vi/d_NS9Vd1sMA/default.jpg"
  },
  {
    "videoId": "F2GK1qvU-Kg",
    "title": "Armin Bijedic - Kuda ides sreco moja (Live)",
    "description": "Muzika - Miodrag M. Ilic Tekst - M. Radomirovic Originalna pjesma na linku https://www.youtube.com/watch?v=i_QkxQ5A-w0 Klavir - Amil Lojo Zabranjen ...",
    "thumbnail": "https://i.ytimg.com/vi/F2GK1qvU-Kg/default.jpg"
  },
  {
    "videoId": "xG0wi1m-89o",
    "title": "Maria Aragon - Born This Way (Cover) by Lady Gaga",
    "description": "This is a cover of Lady GaGa's new song \"Born This Way.\" I hope you enjoy! Lots of Love, Maria.",
    "thumbnail": "https://i.ytimg.com/vi/xG0wi1m-89o/default.jpg"
  },
  {
    "videoId": "ydRAb9cwHnA",
    "title": "Game of Thrones Cello Cover - Break of Reality",
    "description": "LISTEN on Spotify: http://spoti.fi/2p530jy SHEET MUSIC: http://bit.ly/1s1jgIO DOWNLOAD on iTunes: http://apple.co/1O3ejzd Game of Thrones theme song ...",
    "thumbnail": "https://i.ytimg.com/vi/ydRAb9cwHnA/default.jpg"
  },
  {
    "videoId": "ydRAb9cwHnA",
    "title": "Game of Thrones Cello Cover - Break of Reality",
    "description": "LISTEN on Spotify: http://spoti.fi/2p530jy SHEET MUSIC: http://bit.ly/1s1jgIO DOWNLOAD on iTunes: http://apple.co/1O3ejzd Game of Thrones theme song ...",
    "thumbnail": "https://i.ytimg.com/vi/ydRAb9cwHnA/default.jpg"
  },
  {
    "videoId": "c745E7T_Wvg",
    "title": "Obadiah Parker - Hey Ya Cover",
    "description": "This is the original recording of Obadiah Parker (Mat Weddle) performing his acoustic cover of Outkast's \"Hey Ya\" at Xtreme Bean Coffee in Tempe, AZ in 2006.",
    "thumbnail": "https://i.ytimg.com/vi/c745E7T_Wvg/default.jpg"
  },
  {
    "videoId": "wr-buV4tYOA",
    "title": "Skyrim: The Dragonborn Comes - Female Cover by Malukah",
    "description": "If the Skyrim theme already gave you chills, wait until you hear this live cover of the music from the game by the talented fan Malukah. Try not to get too lost in her ...",
    "thumbnail": "https://i.ytimg.com/vi/wr-buV4tYOA/default.jpg"
  },
  {
    "videoId": "8Y3UVNK34wU",
    "title": "COVER VERSIONS Official Trailer (2018) Katie Cassidy, Debby Ryan Movie HD",
    "description": "COVER VERSIONS Official Trailer (2018) Katie Cassidy, Debby Ryan, Drake Bell Movie HD © 2018 - Sony Comedy, Kids, Family and Animated Film, ...",
    "thumbnail": "https://i.ytimg.com/vi/8Y3UVNK34wU/default.jpg"
  },
  {
    "videoId": "hcQyFtHMfbs",
    "title": "Despacito (metal cover by Leo Moracchioli)",
    "description": "Original by Luis Fonsi You can buy my albums or singles here: DIRECT FROM ME (LOSSLESS) ▻ http://bit.ly/2usJ3lq ITUNES ▻ http://apple.co/1Lni4PR ...",
    "thumbnail": "https://i.ytimg.com/vi/hcQyFtHMfbs/default.jpg"
  },
  {
    "videoId": "CjwwmFrsX_E",
    "title": "Chvrches cover Arctic Monkeys' 'Do I Wanna Know?' for Like A Version",
    "description": "Scottish electrio Chvrches perform Arctic Monkeys' Do I Wanna Know? for triple j's Like A Version Subscribe: http://tripj.net/151BPk6 Like A Version is a segment ...",
    "thumbnail": "https://i.ytimg.com/vi/CjwwmFrsX_E/default.jpg"
  },
  {
    "videoId": "T5Cp55MvX54",
    "title": "Daughter - \"Get Lucky\" (Daft Punk cover)",
    "description": "Daughter's cover of Daft Punk's 'Get Lucky', recorded live & exclusively for Huw Stephens on the BBC Radio One Live Lounge on Saturday, 27th April 2013.",
    "thumbnail": "https://i.ytimg.com/vi/T5Cp55MvX54/default.jpg"
  },
  {
    "videoId": "EYH6ubNJqck",
    "title": "Sabaton - Kingdom Come: Deliverance - Manowar cover version",
    "description": "2017 we recorded a version of the Manowar song Kingdom Come. Very little we would know that later there would be a videogame called Kingdom Come: ...",
    "thumbnail": "https://i.ytimg.com/vi/EYH6ubNJqck/default.jpg"
  },
  {
    "videoId": "uJ4diEohODE",
    "title": "Happy - Pentatonix (Pharrell Cover)",
    "description": "A PENTATONIX CHRISTMAS OUT NOW! ITUNES http://smarturl.it/APentatonixChristmas?IQid=yt | AMAZON http://smarturl.it/APTXMASAMZ?IQid=yt | SPOTIFY ...",
    "thumbnail": "https://i.ytimg.com/vi/uJ4diEohODE/default.jpg"
  },
  {
    "videoId": "L64c5vT3NBw",
    "title": "Home | Edward Sharpe and The Magnetic Zeros Acoustic Cover | Narvaez Music Covers | REALITYCHANGERS",
    "description": "Thanks for all the support and love! NEW SPANISH SONG! https://youtu.be/ieISBAG4JM4 SUBSCRIBE TO REALITYCHANGERS: http://bit.ly/1VORWBJ Check ...",
    "thumbnail": "https://i.ytimg.com/vi/L64c5vT3NBw/default.jpg"
  },
  {
    "videoId": "Mn244U2fRKQ",
    "title": "TAEYEON 태연 'Cover Up' Lyric Video",
    "description": "Listen and download on iTunes & Apple Music, Spotify, and Google Play Music http://smarturl.it/TAEYEON_MyVoice Here's the gift from TAEYEON! The lyric ...",
    "thumbnail": "https://i.ytimg.com/vi/Mn244U2fRKQ/default.jpg"
  },
  {
    "videoId": "-Ux3-a9RE1Q",
    "title": "Cover Of The Rolling Stone-Dr.Hook",
    "description": "\"(cover of the rolling stone) is property of (DR. Hook) and it's producers and/or promoters and is used here pursuant to the fair use provision of the DMCA as ...",
    "thumbnail": "https://i.ytimg.com/vi/-Ux3-a9RE1Q/default.jpg"
  },
  {
    "videoId": "lVXziMFEqX0",
    "title": "Careless Whisper - Vintage 1930's Jazz Wham! Cover ft. Dave Koz",
    "description": "Get the MP3: http://smarturl.it/shoppmjyt Tix / Music / Merch: http://smarturl.it/pmjwebyt During our trip to LA, we met up with Grammy nominated saxophonist ...",
    "thumbnail": "https://i.ytimg.com/vi/lVXziMFEqX0/default.jpg"
  },
  {
    "videoId": "4RZDFQ3oYbg",
    "title": "Arctic Monkeys cover Tame Impala 'Feels Like We Only Go Backwards'",
    "description": "Alex Turner from the Arctic Monkeys swaggers his way through Tame Impala's 'Feels Like We Only Go Backwards' for triple j's Like A Version. Subscribe: ...",
    "thumbnail": "https://i.ytimg.com/vi/4RZDFQ3oYbg/default.jpg"
  },
  {
    "videoId": "o6rBK0BqL2w",
    "title": "Ludwig van Beethoven - Moonlight Sonata ( 3rd Movement ) Tina S Cover",
    "description": "Moonlight Sonata (3rd Movement) Ludwig van Beethoven, arranged for electric guitar by Dr.Viossy, played by Tina S (17 y.o). Filmed and taught by Renaud ...",
    "thumbnail": "https://i.ytimg.com/vi/o6rBK0BqL2w/default.jpg"
  },
  {
    "videoId": "kohD5z5mE0E",
    "title": "Let It Go - Male Vocal Cover - Frozen (Soundtrack)",
    "description": "DOWNLOAD!♢ http://amzn.to/2ATxfNz ♢FACEBOOK♢ https://www.facebook.com/pages/Caleb-... ♢TWITTER♢ https://twitter.com/CalebHyles ♢INSTAGRAM♢ ...",
    "thumbnail": "https://i.ytimg.com/vi/kohD5z5mE0E/default.jpg"
  },
  {
    "videoId": "6mEfDSP4g_U",
    "title": "Crazy (Gnarls Barkley Cover) - Ray Lamontagne",
    "description": "Ray Lamontagne's acoustic (and beautiful) cover of Gnarls Barkley's song 'Crazy' I remember when I remember, when I lost my mind There was something so ...",
    "thumbnail": "https://i.ytimg.com/vi/6mEfDSP4g_U/default.jpg"
  },
  {
    "videoId": "eQOFRZ1wNLw",
    "title": "With You - Chris Brown Cover - Justin singing",
    "description": "http://www.myspace.com/justinbieber http://www.twitter.com/justinbieber http://www.facebook.com/justinbieber Now signed by Island Def Jam records and Usher.",
    "thumbnail": "https://i.ytimg.com/vi/eQOFRZ1wNLw/default.jpg"
  },
  {
    "videoId": "_l09H-3zzgA",
    "title": "The Strokes - Under Cover of Darkness",
    "description": "The Strokes' official music video for 'Under Cover Of Darkness'. Click to listen to The Strokes on Spotify: http://smarturl.it/StrokesRepSpot?IQi... As featured on ...",
    "thumbnail": "https://i.ytimg.com/vi/_l09H-3zzgA/default.jpg"
  },
  {
    "videoId": "ScDIkNcqZjE",
    "title": "[Official Video] Papaoutai – Pentatonix ft. Lindsey Stirling (Stromae Cover)",
    "description": "A PENTATONIX CHRISTMAS OUT NOW! ITUNES http://smarturl.it/APentatonixChristmas?IQid=yt | AMAZON http://smarturl.it/APTXMASAMZ?IQid=yt | SPOTIFY ...",
    "thumbnail": "https://i.ytimg.com/vi/ScDIkNcqZjE/default.jpg"
  },
  {
    "videoId": "HMrqBldlqzA",
    "title": "Fleet Foxes - Tiger Mountain Peasant Song (Cover)",
    "description": "We're First Aid Kit and we're a sisters-duo from Sweden. In the summer of 2008 we did this cover of \"Tiger Mountain Peasant Song\" by Fleet Foxes.",
    "thumbnail": "https://i.ytimg.com/vi/HMrqBldlqzA/default.jpg"
  },
  {
    "videoId": "o10drRI3VQ0",
    "title": "[Official Video] White Winter Hymnal - Pentatonix (Fleet Foxes Cover)",
    "description": "A PENTATONIX CHRISTMAS OUT NOW! ITUNES http://smarturl.it/APentatonixChristmas?IQid=yt | AMAZON http://smarturl.it/APTXMASAMZ?IQid=yt | SPOTIFY ...",
    "thumbnail": "https://i.ytimg.com/vi/o10drRI3VQ0/default.jpg"
  },
  {
    "videoId": "H8t5M9_Tvzk",
    "title": "Depeche Mode - Cover Me",
    "description": "\"Cover Me\" from the new album 'Spirit' out now. http://smarturl.it/Spirit?IQid=covermevideo \"Cover Me\" Remixes available October 6th. Pre-order vinyl & CD now: ...",
    "thumbnail": "https://i.ytimg.com/vi/H8t5M9_Tvzk/default.jpg"
  },
  {
    "videoId": "6-wEAeNcA_A",
    "title": "Senbonzakura - cover by Lindsey Stirling",
    "description": "I hope you like my cover of Senbonzakura by Kurousa! Order the deluxe version of my album Shatter Me! It includes an acoustic version of \"Shatter Me\", ...",
    "thumbnail": "https://i.ytimg.com/vi/6-wEAeNcA_A/default.jpg"
  },
  {
    "videoId": "saq0a2eG5y4",
    "title": "【女性が歌う】ヒロイン/back number (Full Cover by Kobasolo & 杏沙子)",
    "description": "今回はbacknumberのヒロインをカバーしました。今回Voをしてくれたのはシンガーソングライターの杏沙子さん。チャンネル登録してね！▷   https://go...",
    "thumbnail": "https://i.ytimg.com/vi/saq0a2eG5y4/default.jpg"
  },
  {
    "videoId": "Oy_JlG7C-T8",
    "title": "FIREWORK FULL COVER (JONTRON OFFICIAL)",
    "description": "Thanks to Mike Bedsole for coming to me with this idea and carrying it out :D! Check out all the AWESOME animators who worked on this project!!! (Thanks so ...",
    "thumbnail": "https://i.ytimg.com/vi/Oy_JlG7C-T8/default.jpg"
  },
  {
    "videoId": "vvviVulgdms",
    "title": "Any Given Day - Diamonds (Rihanna Metal Cover) Official Music Video",
    "description": "Our cover of \"Diamonds\" originally by Rihanna! Enjoy and let it shine bright! Please Share! Like us on Facebook: https://www.facebook.com/AnyxGivenxDay ...",
    "thumbnail": "https://i.ytimg.com/vi/vvviVulgdms/default.jpg"
  },
  {
    "videoId": "ZJZb5lIuyk8",
    "title": "于文文【 體面 】EDM Cover ( 蔡恩雨 Priscilla Abby )",
    "description": "久違的電音翻唱！這次帶來【前任3再見前任插曲】 于文文的「體面」！這版本有沒有灑脫到呢～～希望大家喜翻喔！❤❤❤ 喜翻就記得要分享喔～...",
    "thumbnail": "https://i.ytimg.com/vi/ZJZb5lIuyk8/default.jpg"
  },
  {
    "videoId": "TDGvmM1qAVg",
    "title": "Mr. Big - Take Cover (MV)",
    "description": "Take Cover from Mr. Big's 1996 album Hey Man [Expanded]. Mr. Big on tour - http://www.bandsintown.com/Mr.Big/start_tracking?came_from=176 Subscribe to ...",
    "thumbnail": "https://i.ytimg.com/vi/TDGvmM1qAVg/default.jpg"
  },
  {
    "videoId": "LX64Im6Um2c",
    "title": "Elitni odredi - Ljubavi moja ( NOVI COVER )",
    "description": "Hvalaa jako puno svima koji su me podrzali, puno mi to znaci, volim vas jako puno i nastavite me pratiti i dalje. FACEBOOK ...",
    "thumbnail": "https://i.ytimg.com/vi/LX64Im6Um2c/default.jpg"
  },
  {
    "videoId": "4Cnm0tdkJEU",
    "title": "Thrift Shop (Vintage \"Grandpa Style\" Macklemore Cover)",
    "description": "Get the song here: http://smarturl.it/EssentialsPMJ Sheet Music: : http://bit.ly/ThriftSheet Postmodern Jukebox on Tour! http://smarturl.it/tourpmjyt We decided to ...",
    "thumbnail": "https://i.ytimg.com/vi/4Cnm0tdkJEU/default.jpg"
  },
  {
    "videoId": "Wro0VE6i-XM",
    "title": "Game of Thrones Theme - Western Cover",
    "description": "SUBSCRIBE FOR MORE MUSIC VIDEOS AND COVERS: https://www.youtube.com/user/BenDanProductions?sub_confirmation=1 DOWNLOAD ON ITUNES: ...",
    "thumbnail": "https://i.ytimg.com/vi/Wro0VE6i-XM/default.jpg"
  },
  {
    "videoId": "WMUFEFkPfTg",
    "title": "Ana Nikolić - Labilna (Cover)",
    "description": "Nikola & Ivana. Hvala :)",
    "thumbnail": "https://i.ytimg.com/vi/WMUFEFkPfTg/default.jpg"
  },
  {
    "videoId": "olJt8cZWlio",
    "title": "\"Hold On, We're Going Home\" by Drake (Pia Mia cover)",
    "description": "Pia Mia covers \"Hold On, We're Going Home\" by Drake NOW AVAILABLE ON iTunes here: https://itunes.apple.com/us/album/the-gift-ep/id826151094 Instagram: ...",
    "thumbnail": "https://i.ytimg.com/vi/olJt8cZWlio/default.jpg"
  },
  {
    "videoId": "WJiCUdLBxuI",
    "title": "Hall and Oates - I Can't Go For That - Cover by Nicki Bluhm and The Gramblers - Van Session 17",
    "description": "GET A FREE MP3 OF THIS SONG: http://bit.ly/NBGs_VS_Song Official Website: http://www.nickibluhm.com Like us on Facebook: http://on.fb.me/NBGs_FB Music ...",
    "thumbnail": "https://i.ytimg.com/vi/WJiCUdLBxuI/default.jpg"
  },
  {
    "videoId": "ZuunY8BTqNs",
    "title": "Skrillex - Scary Monsters And Nice Sprites (Live Cover by Pinn Panelle)",
    "description": "New album Ghosts & Liars + merch here: http://music.pinnpanelle.com Buy this song on iTunes ...",
    "thumbnail": "https://i.ytimg.com/vi/ZuunY8BTqNs/default.jpg"
  },
  {
    "videoId": "rV6SmY04WdE",
    "title": "Van Halen - Eruption Guitar Cover",
    "description": "Facebook : https://www.facebook.com/pages/Tina-S/181555232026760 Twitter : https://twitter.com/Tina_S__ \"Eruption\" solo played by Tina (14 y.o.) Filmed and ...",
    "thumbnail": "https://i.ytimg.com/vi/rV6SmY04WdE/default.jpg"
  },
  {
    "videoId": "73noUWDDpWw",
    "title": "Cover Drive - Twilight",
    "description": "Brand new single Sparks out April 29, pre-order on iTunes:http://smarturl.it/CDSparks Watch the video: http://www.youtube.com/watch?v=i_MbWx8BUx8 Debut ...",
    "thumbnail": "https://i.ytimg.com/vi/73noUWDDpWw/default.jpg"
  },
  {
    "videoId": "iyTTX6Wlf1Y",
    "title": "All About That [Upright] Bass - Meghan Trainor Cover PMJ ft. Kate Davis",
    "description": "Download the song: http://smarturl.it/EssentialsPMJ Tickets: http://smarturl.it/tourpmjyt So, this one is pretty self-explainatory. The incredibly talented young ...",
    "thumbnail": "https://i.ytimg.com/vi/iyTTX6Wlf1Y/default.jpg"
  },
  {
    "videoId": "JMz9RmxQHRk",
    "title": "\"Love Sosa\" Chief Keef (Niykee Heaton cover)",
    "description": "The Bedroom Tour Playlist is out now! iTunes: http://smarturl.it/BedroomTourPL Spotify: http://smarturl.it/StreamBedroomTourPL.",
    "thumbnail": "https://i.ytimg.com/vi/JMz9RmxQHRk/default.jpg"
  },
  {
    "videoId": "dkaSxmvZnGs",
    "title": "Bruce Springsteen - Cover Me",
    "description": "\"Cover Me\" by Bruce Springsteen from his seventh album \"Born In The U.S.A.\" (1984).",
    "thumbnail": "https://i.ytimg.com/vi/dkaSxmvZnGs/default.jpg"
  },
  {
    "videoId": "1F-MJaGcg_k",
    "title": "Emina Tufo - Samo ne daj Boze (Live)",
    "description": "Muzika & Tekst by Verica Serifovic Klavir - Amil Lojo Klarinet - Meho Radoovic Zabranjen reupload!! SUBSCRIBE!",
    "thumbnail": "https://i.ytimg.com/vi/1F-MJaGcg_k/default.jpg"
  },
  {
    "videoId": "HQWAk92KEa8",
    "title": "Cover Drive - Explode ft. Dappy",
    "description": "Music video by Cover Drive performing Explode. (C) 2012 Polydor Ltd. (UK)",
    "thumbnail": "https://i.ytimg.com/vi/HQWAk92KEa8/default.jpg"
  },
  {
    "videoId": "NaUCDqWzy1k",
    "title": "Jason Isbell on Austin City Limits \"Cover Me Up\"",
    "description": "Jason Isbell makes his Austin City Limits debut on January 11th on PBS. Check your local PBS listings for dates and times in your area. For more visit acltv.com.",
    "thumbnail": "https://i.ytimg.com/vi/NaUCDqWzy1k/default.jpg"
  },
  {
    "videoId": "1yydcG9woWA",
    "title": "Game of Thrones Violin Cover",
    "description": "Follow me on Twitch for more music! http://www.twitch.tv/jasonyangviolin Click here to subscribe to my channel! http://bit.ly/1IPC5Nc An acoustic and electric ...",
    "thumbnail": "https://i.ytimg.com/vi/1yydcG9woWA/default.jpg"
  },
  {
    "videoId": "IKqXu-5jw60",
    "title": "Duck And Cover (1951) Bert The Turtle",
    "description": "Duck and Cover staring Bert the Turtle is a 1951 Civil Defense Film Written by Raymond J. Mauer and directed by Anthony Rizzo of Archer Productions and ...",
    "thumbnail": "https://i.ytimg.com/vi/IKqXu-5jw60/default.jpg"
  },
  {
    "videoId": "PB3RbO7updc",
    "title": "Jake Shimabukuro - \"Bohemian Rhapsody\" - TED (2010) - ukelele cover",
    "description": "Jake Shimabukuro strums monster sounds out of the tiny Hawaiian ukelele, as he plays a cover of Queen's \"Bohemian Rhapsody.\" A sensational performance ...",
    "thumbnail": "https://i.ytimg.com/vi/PB3RbO7updc/default.jpg"
  },
  {
    "videoId": "dfRtPbBFoGg",
    "title": "David Guetta - Without You ft. Usher (Piano/Cello Cover) - The Piano Guys",
    "description": "Get our latest album \"UNCHARTED\" here: http://hubs.ly/H04ZSnT0 ▻ WE'RE ON TOUR! http://goo.gl/fmybn0 ▻ DOWNLOAD THIS SONG: http://goo.gl/b3hVGG ...",
    "thumbnail": "https://i.ytimg.com/vi/dfRtPbBFoGg/default.jpg"
  },
  {
    "videoId": "aNzCDt2eidg",
    "title": "Birdy - Skinny Love [Official Music Video]",
    "description": "\"Skinny Love\" by Bon Iver performed by Birdy from her debut album http://smarturl.it/skinnylove 'Beautiful Lies' The New Album - Out Now ...",
    "thumbnail": "https://i.ytimg.com/vi/aNzCDt2eidg/default.jpg"
  },
  {
    "videoId": "OwxcQvB_vcQ",
    "title": "The Strokes - Under Cover Of Darkness",
    "description": "Listen to The Strokes' new single \"Under Cover of Darkness\" from their upcoming release Angles.",
    "thumbnail": "https://i.ytimg.com/vi/OwxcQvB_vcQ/default.jpg"
  },
  {
    "videoId": "01vWvocMc6M",
    "title": "Batman Blows His Cover",
    "description": "BEHIND THE SCENES - http://on.fb.me/NVsbfy LIKE us on: http://www.facebook.com/collegehumor The Dark Knight's alter ego is bruised. See more ...",
    "thumbnail": "https://i.ytimg.com/vi/01vWvocMc6M/default.jpg"
  },
  {
    "videoId": "KaOC9danxNo",
    "title": "Space Oddity",
    "description": "NEW YOUTUBE SERIES (Rare Earth): https://www.youtube.com/playlist?list=PLPfak9ofGSn9sWgKrHrXrxQXXxwhCblaT Rest in peace, Starman. A revised ...",
    "thumbnail": "https://i.ytimg.com/vi/KaOC9danxNo/default.jpg"
  },
  {
    "videoId": "d9NF2edxy-M",
    "title": "Somebody That I Used to Know - Walk off the Earth",
    "description": "Stream or Download Our Music Here: https://goo.gl/aJa6je Catch us live! CLICK HERE FOR TICKETS: https://goo.gl/yWgz4b Watch our new single Nomad here: ...",
    "thumbnail": "https://i.ytimg.com/vi/d9NF2edxy-M/default.jpg"
  },
  {
    "videoId": "TvC6VS4Np4U",
    "title": "Vanilla Sky - Umbrella (Rihanna Cover)",
    "description": "Vanilla Sky performing Umbrella by Rihanna.",
    "thumbnail": "https://i.ytimg.com/vi/TvC6VS4Np4U/default.jpg"
  },
  {
    "videoId": "uo3rZjJB1hY",
    "title": "Deep Cover (UNCENSORED) Dr. Dre ft. Snoop Dogg",
    "description": "Every body say: West Side!!",
    "thumbnail": "https://i.ytimg.com/vi/uo3rZjJB1hY/default.jpg"
  },
  {
    "videoId": "nWXCLVCJWTU",
    "title": "Under Cover Farmers - Feature Length",
    "description": "Follow our Under Cover Farmers to learn how three farmers in Stanly County, NC, started using multispecies cover crops and how they were able to realize ...",
    "thumbnail": "https://i.ytimg.com/vi/nWXCLVCJWTU/default.jpg"
  },
  {
    "videoId": "AiwvPmRTv6M",
    "title": "Big Pun, Fat Joe - Twinz (Deep Cover 98)",
    "description": "Big Pun's official music video for 'Twinz (Deep Cover 98)'. Click to listen to Big Pun on Spotify: http://smarturl.it/BPSpot?IQid=BPT As featured on Yeeeah Baby.",
    "thumbnail": "https://i.ytimg.com/vi/AiwvPmRTv6M/default.jpg"
  },
  {
    "videoId": "-w-58hQ9dLk",
    "title": "Jurassic Park Theme Song (Melodica Cover)",
    "description": "Just got a melodica. Here's my rendition of the Jurassic Park theme song. What do you think? http://www.patricklo.com.",
    "thumbnail": "https://i.ytimg.com/vi/-w-58hQ9dLk/default.jpg"
  },
  {
    "videoId": "N3RB_56WziA",
    "title": "RuPaul - Cover Girl feat. Bebe, Nina & Rebecca",
    "description": "Version featuring Bebe Zahara Benet, Nina Flowers, and Rebecca Glasscock. RuPaul's new music video for \"Cover Girl,\" the first single off RuPaul's new album ...",
    "thumbnail": "https://i.ytimg.com/vi/N3RB_56WziA/default.jpg"
  },
  {
    "videoId": "WdwnGG29Upw",
    "title": "Jason Isbell - Cover Me Up (w/ Lyrics)",
    "description": "From Jason Isbell's new album SOutheastern, released June 11th 2013. For the Lyrics click \"Show More\" Buy the album here: ...",
    "thumbnail": "https://i.ytimg.com/vi/WdwnGG29Upw/default.jpg"
  },
  {
    "videoId": "mXiFHDfvn4A",
    "title": "Frank Ocean - Moon River",
    "description": "Frank Ocean - Moon River ℗ Blonded Released February 14, 2018.",
    "thumbnail": "https://i.ytimg.com/vi/mXiFHDfvn4A/default.jpg"
  },
  {
    "videoId": "XgRjcfKLRdQ",
    "title": "STUDIO GHIBLI MUSIC LIVE RADIO 「24/7」 🔴 スタジオジブリ音楽",
    "description": "STUDIO GHIBLI MUSIC LIVE RADIO 「24/7」 スタジオジブリ音楽 • 100% COVER SONGS BY CAT TRUMPET (read description for more info) ☆▻ Follow on ...",
    "thumbnail": "https://i.ytimg.com/vi/XgRjcfKLRdQ/default_live.jpg"
  },
  {
    "videoId": "sihl7OX7dSI",
    "title": "New Punjabi Movie 2017 - BAAZ - Punjabi Full Movie || Babbu Maan || Latest Punjabi Movies",
    "description": "For more Fresh Punjabi videos subscribe http://goo.gl/NnoXVB Baaz is the story of SP Inder Pal Singh Sidhu. Sidhu is a man on a mission. With complete ...",
    "thumbnail": "https://i.ytimg.com/vi/sihl7OX7dSI/default.jpg"
  },
  {
    "videoId": "kTAoPXVNQ9E",
    "title": "Munde Kamaal De ● New Full Punjabi Movie | Latest Punjabi Movies 2016 | Hit Punjabi Films",
    "description": "For New Latest Punjabi Movies - Hit Punjabi Films | New Punjabi Songs 2017 - subscribe http://goo.gl/NnoXVB Prem Motion Pictures Present - A Dumb, Deaf ...",
    "thumbnail": "https://i.ytimg.com/vi/kTAoPXVNQ9E/default.jpg"
  },
  {
    "videoId": "XTpIKuuQwD8",
    "title": "Fateh - New Punjabi Film 2017 | Latest Punjabi Movie | Popular Punjabi Film",
    "description": "For more Fresh Punjabi videos subscribe http://goo.gl/NnoXVB Synopsis \"An enduring Punjabi culture boasts of a sword and stick art that teaches that ...",
    "thumbnail": "https://i.ytimg.com/vi/XTpIKuuQwD8/default.jpg"
  }
]

class UsersController < ApplicationController
  skip_before_action :authorize_request, only: [:create, :generate]
  before_action :set_user, only: [:show, :update, :destroy]

  swagger_controller :users, 'Users'

  swagger_api :index do
    summary 'Returns all posts'
    notes 'Notes...'
  end

  def generate
    $i = 0
    $num = 100
    $gender = ["male", "female"]
    $genres = ["Rock", "Pop", "Electronic", "Folk", "World", "Country", "Jazz", "Funk", "Soul", "Hip Hop", "Classical", "Latin", "Reggae", "Stage And Screen", "Blues", "Non Music", "Rap"]
    $bands = ["AC/DC", "Adam and the Ants", "Afrika Bambaataa", "Al Foster", "Alan Parsons", "Alex Chilton", "Amy Winehouse", "Annie Lennox", "Arctic Monkeys", "B.B. King",
      "Bauhaus", "The Beatles", "Beck", "Billy Idol", "The Birthday Party", "Björk", "Blinker The Star", "Blondie", "Blur", "Bob Dylan", "Bob Marley (and the Wailers)",
      "Brian Wilson", "Bruce Springsteen", "Buzzcocks", "Captain Beefheart", "Carlos Santana", "Cat Anderson", "Cat Stevens", "Catherine Wheel", "Chic", "Chris Isaak",
      "Chrissie Hynde", "Chuck Berry", "The Clash", "Cliff Richard (and the Shadows)", "Coldplay", "Cootie Williams", "Cortinas", " The", "The Cramps", "The Cranberries",
      "Cream", "The Cure", "David Bowie", "David Gilmour", "Deepest Blue", "Devo", "Dizzy Gillespie", "Dr Feelgood", "Duke Ellington", "Ed Sheeran", "Ella Fitzgerald",
      "Elton John", "Elvis Costello", "Elvis Presley", "Eric Clapton", "The Faces", "Fats Domino", "Flaming Lips", "Florence and the Machine", "Foo Fighters", "Frank Sinatra",
      "Frank Zappa", "Frightened Rabbit", "George Michael", "Grace Jones", "Green Day", "Guns N' Roses", "Herbie Hancock", "Horace Silver", "Hugh Masekela", "Ian Dury", "Iggy Pop",
      "The Jam", "James Brown", "Jeff Beck", "Jeff Buckley", "Jimi Hendrix", "John Coltrane", "John Lydon", "Johnny Borrell", "Johnny Cash", "Johnny Marr", "Joni Mitchell", "Joy Division",
      "K.D Lang", "Kasabian", "Kate Bush", "Keith Moon", "Keith Richards", "The Kinks", "Kiss", "The La's", "Led Zeppelin", "Lenny Kravitz", "Leonard Cohen", "Liam Gallagher",
      "The Libertines", "Madness", "Madonna", "Manic Street Preachers", "Marc Bolan", "Marianne Faithfull", "Marilyn Manson", "The Mars Volta", "Max Roach", "Michael Jackson",
      "Miles Davis", "Morrissey", "Muddy Waters", "Mumford and Sons", "Muse", "Neil Young", "New Order", "Nick Cave", "Nigel Kennedy", "Nina Simone", "Nirvana", "Noel Gallagher",
      "O.A.R.", "Oasis", "Offspring", "Ozzy Osbourne", "Pat Metheny", "Patti Smith", "Paul Weller", "Pearl Jam", "Pete Townshend", "Phil Collins", "Phish", "Pink Floyd", "PJ Harvey",
      "The Police", "The Pretenders", "Primal Scream", "Prince", "Program The Dead", "Pulp", "Queen", "Radiohead", "The Ramones", "Red Hot Chili Peppers", "R.E.M.", "Rick Wright",
      "Rod Stewart", "The Rolling Stones", "Rory Gallagher", "Roxy Music", "Roy Hargrove", "Rufus Wainwright", "Run-D.M.C.", "Ryan Adams", "Sex Pistols", "Simply Red",
      "Sinead O'connor", "Siouxsie and The Banshees", "The Slits", "The Smiths", "Sonic Youth", "The Specials", "Squeeze", "Status Quo", "Stereophonics", "Stone Roses",
      "Syd Barrett", "Thelonius Monk", "Thin Lizzy", "Thornley", "Tina Turner", "Tom Jones", "Tom Robinson", "Tom Waits", "U2", "The Undertones", "Van Morrison", "Velvet Revolver",
      "White Stripes", "The Who", "The Yardbirds", "Yumi Matsutoya"]
    $role = ["Cantante", "Bajista", "Baterista", "Guitarrista", "Ukelelista", "Pianista", "Saxofonista", "Cantante", "Cantante", "Guitarrista"]
    begin
      $genre = $genres[rand(0...17)]
      bio = "Hey I love Crescendo! My favourite instrument is the " + Faker::Music.instrument + ", my favourite genre is " + $genre + " and I absolutly love " + $bands[rand(0...180)]
      user = User.create!(
        {
          email:Faker::Internet.email,
          password:"password123",
          password_confirmation:"password123",
          name: Faker::Name.name,
          bio:bio,
          genre: $genre,
          role: $role[rand(0...10)],
          photo: "https://uinames.com/api/photos/"+ $gender[rand(0...2)] +"/"+ (rand(1...20).to_s) +".jpg"
          })
      $j = 0
      $num2 = 10
      begin
        $video_ = $video[rand(0...310)]
        $video_.merge!(artist: user.name)
        user.artworks.create!($video_)
        $j += 1
      end while $j < $num2
       $i +=1
    end while $i < $num
    response = { message: Message.account_created, created_accounts: $num }
    json_response(response, :created)
  end

  # POST /signup
  # return authenticated token upon signup
  def create
    #create a bunch of users
    user = User.create!(user_params)
    auth_token = AuthenticateUser.new(user.email, user.password).call
    response = { message: Message.account_created, auth_token: auth_token }
    json_response(response, :created)
  end

  # GET /users
  def index
    @users = User.all
    json_response(@users)
  end


  # GET /users/:id/artworks
  def artworks
    @artworks = User.find(params[:id]).artworks
    json_response(@artworks)
  end

  private

  def user_params
    params.permit(
      :name,
      :email,
      :password,
      :password_confirmation,
      :photo,
      :role,
      :genre,
      :bio
    )
  end

  def set_user
    @user = User.find(params[:id])
  end
end
