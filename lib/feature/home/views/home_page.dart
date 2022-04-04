import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pankaz_portfolio/core/widgets/animated_rich_text.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.grey, Colors.blueGrey, Colors.black],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Row(
            children: [
              Container().expand(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      const AnimatedRichText(
                        text: 'A',
                        textColor: Colors.yellow,
                        lineColor: Colors.yellow,
                      ),
                      'bout me'
                          .text
                          .scale(1.2)
                          .subtitle2(context)
                          .bold
                          .make()
                          .opacity(value: 0.6),
                    ],
                  ),
                  30.heightBox,
                  "I'm Pankaz".text.xl3.make(),
                  20.heightBox,
                  'Cinematographer'
                      .text
                      .color(Colors.yellow)
                      .bold
                      .scale(1.15)
                      .make(),
                  20.heightBox,
                  'I am Pankaz Mahara. Desxription description description \n'
                          'description description \n'
                          'description description description description \n'
                          'description description description \n'
                          'description'
                      .text
                      .make(),
                  30.heightBox,
                  const SocialWidget(),
                  30.heightBox,
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.yellow),
                    ),
                    child: 'Download CV'.text.xl2.bold.make(),
                  ),
                ],
              ).expand(flex: 5),
            ],
          ),
        ),
      ),
    );
  }
}

class SocialWidget extends StatelessWidget {
  const SocialWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<void> _launchUrl(String url) async {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        context.showToast(msg: 'Something went wrong');
      }
    }

    return Row(
      children: [
        IconButton(
          onPressed: () async {
            const facebookUrl = 'https://www.facebook.com/Pankazphotography';
            await _launchUrl(facebookUrl);
          },
          icon: const Icon(
            FontAwesomeIcons.facebook,
            color: Colors.blue,
          ),
        ),
        IconButton(
          onPressed: () async {
            const instaUrl = '';
            await _launchUrl(instaUrl);
          },
          icon: const Icon(
            FontAwesomeIcons.instagram,
            color: Colors.red,
          ),
        ),
        IconButton(
          onPressed: () async {
            const youtubeUrl =
                'https://www.youtube.com/channel/UCbAZjC6gDZA-bKocsjDoT5w';
            await _launchUrl(youtubeUrl);
          },
          icon: const Icon(
            FontAwesomeIcons.youtube,
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
