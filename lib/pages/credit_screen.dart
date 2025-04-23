import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/url_launcher.dart';

class CreditScreen extends StatelessWidget {
  const CreditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: const SizedBox.shrink(), title: const Text('クレジット・謝辞')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('当アプリでは、以下の素材・サービスを利用させていただいております。', style: TextStyle(fontSize: 16)),

              _SectionHeader(title: '各出演者様のYouTubeチャンネル'),
              Gap(8),
              _TextWithLink(
                text:
                    '当アプリでは、歌枠リレーの出演者様のYouTubeチャンネルの動画およびサムネイル画像を使用させていただいております。素敵な歌声をありがとうございます。',
              ),
              Gap(8),
              Text('掲載されている動画およびサムネイルの著作権は、各配信者様およびその所属先に帰属します。'),

              _SectionHeader(title: 'YouTube API (IFrame Player API)'),
              Gap(8),
              _TextWithLink(
                text:
                    '当アプリは YouTube API サービスを利用しています。詳細については、YouTube API サービスの利用規約 (https://developers.google.com/youtube/terms/api-services-terms-of-service ) をご覧ください。',
              ),

              _SectionHeader(title: 'YouTube アイコン'),
              Gap(8),
              _TextWithLink(
                text:
                    '当アプリでは、YouTube ブランドガイドライン (https://www.youtube.com/howyoutubeworks/resources/brand-resources/ ) に基づき、YouTube アイコンを使用しています。「YouTube」およびそのロゴは、Google LLC の商標です。',
              ),
              Gap(8),

              _SectionHeader(title: 'X アイコン'),
              Gap(8),
              _TextWithLink(
                text:
                    '当アプリでは、X ブランドガイドライン (https://about.x.com/ja/who-we-are/brand-toolkit/ ) に基づき、X ロゴを使用しています。「X」およびそのロゴは、X Corp. の商標です。',
              ),
              Gap(8),

              _SectionHeader(title: '免責事項（共通）'),
              Gap(8),
              Text(
                '外部リンク先のコンテンツに関しては、当アプリでは一切の責任を負いかねます。ご利用の際はご自身の判断でお願いいたします。',
                style: TextStyle(height: 1.2),
              ),
              Gap(8),
              Text('各サービスの名称・ロゴは、各社の登録商標または商標です。'),

              _SectionHeader(title: 'ご連絡について'),
              Gap(8),
              Text('データ不備の報告等ありましたら、お気軽にどうぞ！', style: TextStyle(height: 1.2)),
              Gap(8),
              Text('X(旧Twitter): @masyuomallow'),
            ],
          ),
        ),
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader({required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Gap(16),
        Divider(height: 1),
        Gap(16),
        Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ],
    );
  }
}

class _TextWithLink extends StatelessWidget {
  const _TextWithLink({required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Linkify(
      onOpen: (link) async {
        await launchUrl(Uri.parse(link.url));
      },
      text: text,
      style: TextStyle(height: 1.2),
      linkStyle: TextStyle(color: Colors.orangeAccent, decoration: TextDecoration.none),
    );
  }
}
