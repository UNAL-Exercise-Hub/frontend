import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoDetailWidget extends StatelessWidget{
  final bool? isMobile;

  const VideoDetailWidget({
    super.key,
    this.isMobile,
  });

  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.all(16),
      color: Color(0xFF6750D6),
      height: 400,
      child: Column(
        children: [
          Text("Baki Pose", style: TextStyle(fontSize: 24),),
          SizedBox(height: 12,),
          Text("Series: 5"),
          SizedBox(height: 12,),
          YoutubePlayerBuilder(
            player: YoutubePlayer(
              controller: YoutubePlayerController(
                initialVideoId: YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=3b6GC6vKtDQ")!,
              ),
            ),
            builder: (context, player) {
              return !isMobile! // Ajustar el tamaño en función del dispositivo
                  ? player // En dispositivos móviles, mantener el tamaño original
                  : SizedBox(
                width: 400, // Ancho reducido en dispositivos de escritorio
                height: 225, // Alto reducido en dispositivos de escritorio
                child: player,
              );
            },
          ),
        ],
      ),
    );
  }

}