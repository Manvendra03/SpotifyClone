import 'package:flutter/material.dart';
import 'package:music_player/models/category_tile.dart';
import 'package:music_player/models/song.dart';

Color backgroundColor = Color.fromARGB(255, 24, 24, 24);
Color spotify_green = Colors.green;

List<String> category = ["Music", "Podcasts", "Punjabi", "Bollywood", "Rock"];

List<Song> Slist = [
  Song(
      img:
          "https://www.pinkvilla.com/images/2023-07/245988718_dulquer-salmaan-announces-first-hindi-music-video-heeriye-2-1.jpg",
      song_tittle: "Heeriye (feat.Artjit Singh)",
      song_desc: "Heeriye (feat.Artjit Singh)",
      singer_names: "Single . JasleenRoyal, Arjit Singh , Dulquer Singh"),
  Song(
      img: "https://i.scdn.co/image/ab67616d0000b2730f29b052ea18eb757ec7ca9a",
      song_tittle: "Hawayein,",
      song_desc: "Hawayein,Hawayein,",
      singer_names: "Single . Arjit Singh , Dulquer Singh"),
  Song(
      img: "https://i.ytimg.com/vi/_iktURk0X-A/maxresdefault.jpg",
      song_tittle: "Phir Bhi Tumko Chaahunga,",
      song_desc: "Hawayein,Hawayein,",
      singer_names: "Single . Arjit Singh and Shashaa Tirupati "),
  Song(
      img:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKdlUqDS8SOktRXHozXJFMuEM710IDlt5V1ehY83LKH9WqQ5n1iJSzkZrDQ6UxqAfxT38&usqp=CAU",
      song_tittle: "Khairiyat,",
      song_desc: "KhairiyatKhairiyatKhairiyat",
      singer_names: "Single . Arjit Singh"),
  Song(
      img:
          "https://a10.gaanacdn.com/gn_img/albums/BZgWoOW2d9/ZgWoBg1E32/size_l_1545328987.webp",
      song_tittle: "Mera Dil Bhi Kitna Pagal Hai",
      song_desc: "Mera Dil Bhi Kitna Pagal HaiMera Dil Bhi Kitna Pagal Hai",
      singer_names: "Single . Alka Yagnik and Kumar Sanu"),
  Song(
      img:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZ8CTmeiSRe4HzSplRu2V-dXoQN7O8rfdAMQ&usqp=CAU",
      song_tittle: "Sunn Raha Hai",
      song_desc: "Hawayein,Hawayein,",
      singer_names: "Song by Ankit Tiwari"),
  Song(
      img:
          "https://www.pinkvilla.com/images/2023-07/245988718_dulquer-salmaan-announces-first-hindi-music-video-heeriye-2-1.jpg",
      song_tittle: "Heeriye (feat.Artjit Singh)",
      song_desc: "Heeriye (feat.Artjit Singh)",
      singer_names: "Single . JasleenRoyal, Arjit Singh , Dulquer Singh"),
  Song(
      img: "https://i.scdn.co/image/ab67616d0000b2730f29b052ea18eb757ec7ca9a",
      song_tittle: "Hawayein,",
      song_desc: "Hawayein,Hawayein,",
      singer_names: "Single . Arjit Singh , Dulquer Singh"),
  Song(
      img: "https://i.ytimg.com/vi/_iktURk0X-A/maxresdefault.jpg",
      song_tittle: "Phir Bhi Tumko Chaahunga,",
      song_desc: "Hawayein,Hawayein,",
      singer_names: "Single . Arjit Singh and Shashaa Tirupati "),
  Song(
      img:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKdlUqDS8SOktRXHozXJFMuEM710IDlt5V1ehY83LKH9WqQ5n1iJSzkZrDQ6UxqAfxT38&usqp=CAU",
      song_tittle: "Khairiyat,",
      song_desc: "KhairiyatKhairiyatKhairiyat",
      singer_names: "Single . Arjit Singh"),
  Song(
      img:
          "https://www.pinkvilla.com/images/2023-07/245988718_dulquer-salmaan-announces-first-hindi-music-video-heeriye-2-1.jpg",
      song_tittle: "Heeriye (feat.Artjit Singh)",
      song_desc: "Heeriye (feat.Artjit Singh)",
      singer_names: "Single . JasleenRoyal, Arjit Singh , Dulquer Singh"),
  Song(
      img: "https://i.scdn.co/image/ab67616d0000b2730f29b052ea18eb757ec7ca9a",
      song_tittle: "Hawayein,",
      song_desc: "Hawayein,Hawayein,",
      singer_names: "Single . Arjit Singh , Dulquer Singh"),
  Song(
      img: "https://i.ytimg.com/vi/_iktURk0X-A/maxresdefault.jpg",
      song_tittle: "Phir Bhi Tumko Chaahunga,",
      song_desc: "Hawayein,Hawayein,",
      singer_names: "Single . Arjit Singh and Shashaa Tirupati "),
  Song(
      img:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKdlUqDS8SOktRXHozXJFMuEM710IDlt5V1ehY83LKH9WqQ5n1iJSzkZrDQ6UxqAfxT38&usqp=CAU",
      song_tittle: "Khairiyat,",
      song_desc: "KhairiyatKhairiyatKhairiyat",
      singer_names: "Single . Arjit Singh"),
  Song(
      img:
          "https://a10.gaanacdn.com/gn_img/albums/BZgWoOW2d9/ZgWoBg1E32/size_l_1545328987.webp",
      song_tittle: "Mera Dil Bhi Kitna Pagal Hai",
      song_desc: "Mera Dil Bhi Kitna Pagal HaiMera Dil Bhi Kitna Pagal Hai",
      singer_names: "Single . Alka Yagnik and Kumar Sanu"),
  Song(
      img:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZ8CTmeiSRe4HzSplRu2V-dXoQN7O8rfdAMQ&usqp=CAU",
      song_tittle: "Sunn Raha Hai",
      song_desc: "Hawayein,Hawayein,",
      singer_names: "Song by Ankit Tiwari"),
  Song(
      img:
          "https://www.pinkvilla.com/images/2023-07/245988718_dulquer-salmaan-announces-first-hindi-music-video-heeriye-2-1.jpg",
      song_tittle: "Heeriye (feat.Artjit Singh)",
      song_desc: "Heeriye (feat.Artjit Singh)",
      singer_names: "Single . JasleenRoyal, Arjit Singh , Dulquer Singh"),
  Song(
      img: "https://i.scdn.co/image/ab67616d0000b2730f29b052ea18eb757ec7ca9a",
      song_tittle: "Hawayein,",
      song_desc: "Hawayein,Hawayein,",
      singer_names: "Single . Arjit Singh , Dulquer Singh"),
  Song(
      img: "https://i.ytimg.com/vi/_iktURk0X-A/maxresdefault.jpg",
      song_tittle: "Phir Bhi Tumko Chaahunga,",
      song_desc: "Hawayein,Hawayein,",
      singer_names: "Single . Arjit Singh and Shashaa Tirupati "),
  Song(
      img:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKdlUqDS8SOktRXHozXJFMuEM710IDlt5V1ehY83LKH9WqQ5n1iJSzkZrDQ6UxqAfxT38&usqp=CAU",
      song_tittle: "Khairiyat,",
      song_desc: "KhairiyatKhairiyatKhairiyat",
      singer_names: "Single . Arjit Singh"),
  Song(
      img:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKdlUqDS8SOktRXHozXJFMuEM710IDlt5V1ehY83LKH9WqQ5n1iJSzkZrDQ6UxqAfxT38&usqp=CAU",
      song_tittle: "Last Song",
      song_desc: "Last Item of List",
      singer_names: "Single . Manvendra Patidar"),
];

List<CategoryList> category_tile_List = [
  CategoryList(
    img_url:
        "https://img.freepik.com/free-vector/modern-music-event-poster-with-abstract-brush-stroke_1361-1917.jpg?size=626&ext=jpg&ga=GA1.1.1645449330.1699088562&semt=ais",
    tittle: "Music",
  ),
  CategoryList(
    img_url:
        "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/podcast-poster-design-template-cdba2a9b0278c1e5e30c6b070d137385_screen.jpg?ts=1653450044",
    tittle: "Podcasts",
  ),
  CategoryList(
    img_url:
        "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00371645-baexpwyjal-portrait.jpg",
    tittle: "Live Events",
  ),
  CategoryList(
    img_url:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHBjHTVyqK_LqJNtZEOr-brruOlUVfSyZVYl5Dd34GqHF_LPojHowZw1kcOI0BSltdEZI&usqp=CAU",
    tittle: "Made For you",
  ),
  CategoryList(
    img_url:
        "https://img.freepik.com/free-vector/modern-music-event-poster-with-abstract-brush-stroke_1361-1917.jpg?w=360",
    tittle: "New Releases",
  ),
  CategoryList(
    img_url:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTadhVtZCWmZEGW4NoitSw0YtG2RtkPUs7_bQ&usqp=CAU",
    tittle: "Hindi",
  ),
  CategoryList(
    img_url:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbr8Aj_-xmuS8B9Tfm_zq5c4CcU10EvaIuqA&usqp=CAU",
    tittle: "Punjabi",
  ),
  CategoryList(
    img_url:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIRT5Dl4EsCSAInTCOrwQxnGVLL43tmCPQxQ&usqp=CAU",
    tittle: "Tamil",
  ),
  CategoryList(
    img_url:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLPkNR8PQabKPxCfo3VsT2YmRKE9g4UGLvCg&usqp=CAU",
    tittle: "Talugu",
  ),
  CategoryList(
    img_url:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTKktW4EemgcxDvv7hVqXESpSzkErtses4gA&usqp=CAU",
    tittle: "Rock",
  ),
  CategoryList(
    img_url:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXSEkcVDH74qvZXGmSsvR1bj6YxvH9graMDg&usqp=CAU",
    tittle: "Happy Cristmas",
  ),
  CategoryList(
    img_url:
        "https://m.media-amazon.com/images/I/61c7gYNOJNL._AC_UF1000,1000_QL80_.jpg",
    tittle: "Love",
  ),
  CategoryList(
    img_url:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaem2fiBAKkMErwnQaFc6k5e4le6haZC0shA&usqp=CAU",
    tittle: "Pop",
  ),
  CategoryList(
    img_url: "https://i.ytimg.com/vi/6ejvwC165fU/maxresdefault.jpg",
    tittle: "Mood",
  ),
  CategoryList(
    img_url:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQB-D38lzG7RyX8F-1VV3ypZtoaABf1HJAFZw&usqp=CAU",
    tittle: "Radio",
  ),
  CategoryList(
    img_url:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQB-D38lzG7RyX8F-1VV3ypZtoaABf1HJAFZw&usqp=CAU",
    tittle: "Last One ",
  ),
  CategoryList(
    img_url:
        "https://img.freepik.com/free-vector/modern-music-event-poster-with-abstract-brush-stroke_1361-1917.jpg?size=626&ext=jpg&ga=GA1.1.1645449330.1699088562&semt=ais",
    tittle: "Music",
  ),
  CategoryList(
    img_url:
        "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/podcast-poster-design-template-cdba2a9b0278c1e5e30c6b070d137385_screen.jpg?ts=1653450044",
    tittle: "Podcasts",
  ),
  CategoryList(
    img_url:
        "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00371645-baexpwyjal-portrait.jpg",
    tittle: "Live Events",
  ),
  CategoryList(
    img_url:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHBjHTVyqK_LqJNtZEOr-brruOlUVfSyZVYl5Dd34GqHF_LPojHowZw1kcOI0BSltdEZI&usqp=CAU",
    tittle: "Made For you",
  ),
  CategoryList(
    img_url:
        "https://img.freepik.com/free-vector/modern-music-event-poster-with-abstract-brush-stroke_1361-1917.jpg?w=360",
    tittle: "New Releases",
  ),
  CategoryList(
    img_url:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTadhVtZCWmZEGW4NoitSw0YtG2RtkPUs7_bQ&usqp=CAU",
    tittle: "Hindi",
  ),
  CategoryList(
    img_url:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbr8Aj_-xmuS8B9Tfm_zq5c4CcU10EvaIuqA&usqp=CAU",
    tittle: "Punjabi",
  ),
  CategoryList(
    img_url:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIRT5Dl4EsCSAInTCOrwQxnGVLL43tmCPQxQ&usqp=CAU",
    tittle: "Tamil",
  ),
  CategoryList(
    img_url:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLPkNR8PQabKPxCfo3VsT2YmRKE9g4UGLvCg&usqp=CAU",
    tittle: "Talugu",
  ),
  CategoryList(
    img_url:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTKktW4EemgcxDvv7hVqXESpSzkErtses4gA&usqp=CAU",
    tittle: "Rock",
  ),
  CategoryList(
    img_url:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXSEkcVDH74qvZXGmSsvR1bj6YxvH9graMDg&usqp=CAU",
    tittle: "Happy Cristmas",
  ),
  CategoryList(
    img_url:
        "https://m.media-amazon.com/images/I/61c7gYNOJNL._AC_UF1000,1000_QL80_.jpg",
    tittle: "Love",
  ),
  CategoryList(
    img_url:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaem2fiBAKkMErwnQaFc6k5e4le6haZC0shA&usqp=CAU",
    tittle: "Pop",
  ),
  CategoryList(
    img_url: "https://i.ytimg.com/vi/6ejvwC165fU/maxresdefault.jpg",
    tittle: "Mood",
  ),
  CategoryList(
    img_url:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQB-D38lzG7RyX8F-1VV3ypZtoaABf1HJAFZw&usqp=CAU",
    tittle: "Radio",
  ),
  CategoryList(
    img_url:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQB-D38lzG7RyX8F-1VV3ypZtoaABf1HJAFZw&usqp=CAU",
    tittle: "Last One ",
  ),
];

List<Color> tile_colors = [
  Color(0xffDC148C),
  Color(0xff006450),
  Color(0xff8400E7),
  Color(0xff1E3264),
  Color(0xffE8115B),
  Color(0xffA56752),
  Color(0xff1E3264),
  Color(0xff148A08),
  Color(0xffE91429),
  Color(0xff8D67AB),
  Color(0xff1E3264),
  Color(0xff8C1932),
  Color(0xffBA5D07),
  Color(0xffDC148C),
  Color(0xff8D67AB),
  Color(0xff1E3264),
  Color(0xff8C1932),
  Color(0xffBA5D07),
  Color(0xffE8115B),
  Color(0xffA56752),
  Color(0xff1E3264),
  Color(0xff148A08),
  Color(0xffE91429),
];
