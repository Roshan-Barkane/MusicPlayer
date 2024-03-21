import 'package:flutter/material.dart';

class Music_List extends StatefulWidget {
  const Music_List({super.key});

  @override
  State<Music_List> createState() => _Music_ListState();
}

class _Music_ListState extends State<Music_List> {
  List audio = [
    {
      "thambnail":
          "https://image-cdn.hypb.st/https://hypebeast.com/image/2023/11/j-cole-does-not-charge-features-free-verses-a-safe-place-lil-yachty-podcast-revealed-000.jpg?fit=max&cbr=1&q=90&w=750&h=500",
      "path": "audio/Blow Up  J Trix x Subspace.mp3",
      "artist": "Roshan",
      "name": "Blow Up  J Trix x"
    },
    {
      "thambnail":
          "https://imgs.search.brave.com/8cps00VFo_uYYdxk8owdbCTWhkMsBm_2o9lXvbX3-M8/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9jb3Zl/ci5tci1qYXR0Lmlt/L3RodW1iLzM5MjM3/L0NpdHktU2x1bXMu/anBn",
      "path": "audio/City Slums  Raja Kumari.mp3",
      "artist": "Naman",
      "name": "City Slums"
    },
    {
      "thambnail":
          "https://imgs.search.brave.com/YlP6RCBuPb8Oid-A9jCep-IJ93xYZK2NKU8g2OtO9hk/rs:fit:500:0:0/g:ce/aHR0cHM6Ly94cGxv/cmluZ2luZGlhLmlu/L3dwLWNvbnRlbnQv/dXBsb2Fkcy8yMDIw/LzA1L2Jlc3QtY29r/ZS1zdHVkaW8tc29u/Z3MtMS5qcGc",
      "path": "audio/Coke Studio  Season 14.mp3",
      "artist": "Yash",
      "name": "Coke Studio Season 14"
    },
    {
      "thambnail":
          "https://imgs.search.brave.com/GpiUHqR65ufzeSqNgE-4ntqeEfeTI0K7pQzPCoSYdDQ/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9jb3Zl/cnMuZGpwdW5qYWIu/cHJvL2ltYWdlLzQ5/MTUzMi8zLTU5LUFN/LTEuanBn",
      "path": "audio/DIVINE  359 AM.mp3",
      "artist": "Roshan",
      "name": "DIVINE 359 AM"
    },
    {
      "thambnail":
          "https://imgs.search.brave.com/cdqkKasouG8KkkSK9wJulOGuhnF2aWGN2VbS5NhZ0wk/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pLnl0/aW1nLmNvbS92aS9K/ck80NkNKZDlucy8w/LmpwZw",
      "path": "audio/Dunia  Hindi Motivational Rap.mp3",
      "artist": "Naman",
      "name": "Dunia"
    },
    {
      "thambnail":
          "https://janapadalu.in/wp-content/uploads/2022/09/Believer-Song-Lyrics-Imagine-Dragons.jpg",
      "path": "audio/Iron man  Believer.mp3",
      "artist": "Yash",
      "name": "Iron man Believer"
    },
    {
      "thambnail":
          "https://www.lyricsovera2z.com/wp-content/uploads/2022/08/Khawab-Lyrics-Munawar-Faruqui-1024x576.jpg",
      "path": "audio/Khawab  Munawar.mp3",
      "artist": "Roshan",
      "name": "Khawab Munawar"
    },
    {
      "thambnail":
          "https://www.superherodb.com/pictures2/portraits/10/100/791.jpg?v=1610931347",
      "path": "audio/Shaktiman the super.mp3",
      "artist": "Namen",
      "name": "Shaktiman the super"
    },
    {
      "thambnail":
          "https://c.saavncdn.com/401/Shoorveer-III-Hindi-2022-20220220200317-500x500.jpg",
      "path": "audio/SHOORVEER 3  A Tribute.mp3",
      "artist": "Roshan",
      "name": "SHOORVEER 3  A Tribute"
    },
    {
      "thambnail":
          "https://comicvine.gamespot.com/a/uploads/scale_medium/9/99801/2243323-avs1203143.jpg",
      "path": "audio/Tony Stark.mp3",
      "artist": "Naman",
      "name": "Tony Stark"
    },
    {
      "thambnail":
          "https://i0.wp.com/ytimg.googleusercontent.com/vi/m5U_d_qydOo/hqdefault.jpg?resize=650,400",
      "path": "audio/YALGAAR ft The Harshit.mp3",
      "artist": "Yash",
      "name": "YALGAAR ft The Harshit"
    }
  ];

  // change icon backgraund color

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Music Player"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return SizedBox(
              height: 90,
              child: Card(
                child: ListTile(
                  leading: Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Image.network(
                      audio[index]["thambnail"],
                      fit: BoxFit.fill,
                    ),
                  ),
                  title: Text(
                    audio[index]["name"].toString(),
                    style: const TextStyle(
                        fontSize: 20,
                        letterSpacing: 2,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      audio[index]["artist"].toString(),
                      style: const TextStyle(
                          fontSize: 17,
                          letterSpacing: 2,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  trailing: CircleAvatar(
                    child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/player",
                              arguments: {'index': index});
                        },
                        icon: const Icon(
                          Icons.play_arrow,
                          size: 25,
                        )),
                  ),
                ),
              ),
            );
          },
          itemCount: audio.length,
        ),
      ),
    );
  }
}
