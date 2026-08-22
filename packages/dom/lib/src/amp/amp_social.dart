import 'package:dom/dom.dart' show DomComponent, Component;

/// An AMP component to embed YouTube videos.
class AmpYoutube extends DomComponent {
  @override
  String get tag => 'amp-youtube';

  AmpYoutube({
    String? videoid,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({
         'data-videoid': ?videoid,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       }, children);
}

/// An AMP component to embed Vimeo videos.
class AmpVimeo extends DomComponent {
  @override
  String get tag => 'amp-vimeo';

  AmpVimeo({
    String? videoid,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({
         'data-videoid': ?videoid,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       }, children);
}

/// An AMP component to embed SoundCloud audio tracks.
class AmpSoundcloud extends DomComponent {
  @override
  String get tag => 'amp-soundcloud';

  AmpSoundcloud({
    String? trackid,
    bool? visual,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({
         'data-trackid': ?trackid,
         if (visual == true) 'data-visual': 'true',
         ...?attributes,
       }, children);
}

/// An AMP component to embed DailyMotion videos.
class AmpDailymotion extends DomComponent {
  @override
  String get tag => 'amp-dailymotion';

  AmpDailymotion({
    String? videoid,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({
         'data-videoid': ?videoid,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       }, children);
}

/// An AMP component to embed Gfycat animations.
class AmpGfycat extends DomComponent {
  @override
  String get tag => 'amp-gfycat';

  AmpGfycat({
    String? gfyid,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({
         'data-gfyid': ?gfyid,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       }, children);
}

/// An AMP component to embed Instagram posts.
class AmpInstagram extends DomComponent {
  @override
  String get tag => 'amp-instagram';

  AmpInstagram({
    String? shortcode,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({
         'data-shortcode': ?shortcode,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       }, children);
}

/// An AMP component to embed Twitter tweets.
class AmpTwitter extends DomComponent {
  @override
  String get tag => 'amp-twitter';

  AmpTwitter({
    String? tweetid,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({
         'data-tweetid': ?tweetid,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       }, children);
}

/// An AMP component to embed Facebook content.
class AmpFacebook extends DomComponent {
  @override
  String get tag => 'amp-facebook';

  AmpFacebook({
    String? href,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({
         'data-href': ?href,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       }, children);
}

/// An AMP component to embed Facebook Comments.
class AmpFacebookComments extends DomComponent {
  @override
  String get tag => 'amp-facebook-comments';

  AmpFacebookComments({
    String? href,
    String? numposts,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({
         'data-href': ?href,
         'data-numposts': ?numposts,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       }, children);
}

/// An AMP component to embed a Facebook Like button.
class AmpFacebookLike extends DomComponent {
  @override
  String get tag => 'amp-facebook-like';

  AmpFacebookLike({
    String? href,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({
         'data-href': ?href,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       }, children);
}

/// An AMP component to embed Facebook Pages.
class AmpFacebookPage extends DomComponent {
  @override
  String get tag => 'amp-facebook-page';

  AmpFacebookPage({
    String? href,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({
         'data-href': ?href,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       }, children);
}

/// An AMP component to embed Pinterest boards, pins, and profiles.
class AmpPinterest extends DomComponent {
  @override
  String get tag => 'amp-pinterest';

  AmpPinterest({
    String? pinId,
    String? pinDo,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({
         'data-pin-id': ?pinId,
         'data-pin-do': ?pinDo,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       }, children);
}

/// An AMP component to embed Playbuzz content.
class AmpPlaybuzz extends DomComponent {
  @override
  String get tag => 'amp-playbuzz';

  AmpPlaybuzz({
    String? item,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({
         'data-item': ?item,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       }, children);
}

/// An AMP component to embed Reach Player videos.
class AmpReachPlayer extends DomComponent {
  @override
  String get tag => 'amp-reach-player';

  AmpReachPlayer({
    String? embedId,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({
         'data-embed-id': ?embedId,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       }, children);
}

/// An AMP component to embed Brightcove videos.
class AmpBrightcove extends DomComponent {
  @override
  String get tag => 'amp-brightcove';

  AmpBrightcove({
    String? account,
    String? playerId,
    String? videoId,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({
         'data-account': ?account,
         'data-player-id': ?playerId,
         'data-video-id': ?videoId,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       }, children);
}

/// An AMP component to embed Kaltura Player content.
class AmpKalturaPlayer extends DomComponent {
  @override
  String get tag => 'amp-kaltura-player';

  AmpKalturaPlayer({
    String? partnerId,
    String? uiconfId,
    String? entryId,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({
         'data-partner-id': ?partnerId,
         'data-uiconf-id': ?uiconfId,
         'data-entry-id': ?entryId,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       }, children);
}

/// An AMP component to embed JW Player videos.
class AmpJwplayer extends DomComponent {
  @override
  String get tag => 'amp-jwplayer';

  AmpJwplayer({
    String? mediaid,
    String? playerid,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({
         'data-mediaid': ?mediaid,
         'data-playerid': ?playerid,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       }, children);
}

/// An AMP component to embed Hulu videos.
class AmpHulu extends DomComponent {
  @override
  String get tag => 'amp-hulu';

  AmpHulu({
    String? embedId,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({
         'data-embed-id': ?embedId,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       }, children);
}

/// Embeds a GitHub Gist securely via an iframe.
class AmpGist extends DomComponent {
  @override
  String get tag => 'amp-gist';

  AmpGist({String? gistid, String? file, Map<String, String>? attributes})
    : super({'data-gistid': ?gistid, 'data-file': ?file, ...?attributes});

  @override
  Iterable<Component> build() => [];
}

/// Embeds a Brid.tv video player.
class AmpBridPlayer extends DomComponent {
  @override
  String get tag => 'amp-brid-player';

  AmpBridPlayer({
    String? partner,
    String? player,
    String? video,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super({
         'data-partner': ?partner,
         'data-player': ?player,
         'data-video': ?video,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       });

  @override
  Iterable<Component> build() => [];
}

/// Embeds a cloud-hosted Connatix Video Player.
class AmpConnatixPlayer extends DomComponent {
  @override
  String get tag => 'amp-connatix-player';

  AmpConnatixPlayer({
    String? playerId,
    String? mediaId,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super({
         'data-player-id': ?playerId,
         'data-media-id': ?mediaId,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       });

  @override
  Iterable<Component> build() => [];
}

/// Embeds a cloud-hosted Delight Video Player.
class AmpDelightPlayer extends DomComponent {
  @override
  String get tag => 'amp-delight-player';

  AmpDelightPlayer({
    String? playerid,
    String? contentid,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super({
         'data-playerid': ?playerid,
         'data-contentid': ?contentid,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       });

  @override
  Iterable<Component> build() => [];
}

/// Displays an Embedly media card.
class AmpEmbedlyCard extends DomComponent {
  @override
  String get tag => 'amp-embedly-card';

  AmpEmbedlyCard({String? url, Map<String, String>? attributes})
    : super({'data-url': ?url, ...?attributes});

  @override
  Iterable<Component> build() => [];
}

/// Embeds the Google Read Aloud speech player.
class AmpGoogleReadAloudPlayer extends DomComponent {
  @override
  String get tag => 'amp-google-read-aloud-player';

  AmpGoogleReadAloudPlayer({String? apiKey, Map<String, String>? attributes})
    : super({'data-api-key': ?apiKey, ...?attributes});

  @override
  Iterable<Component> build() => [];
}

/// Displays Iframely-powered rich media embeds.
class AmpIframely extends DomComponent {
  @override
  String get tag => 'amp-iframely';

  AmpIframely({String? url, Map<String, String>? attributes})
    : super({'data-url': ?url, ...?attributes});

  @override
  Iterable<Component> build() => [];
}

/// Embeds video players from Minute Media.
class AmpMinuteMediaPlayer extends DomComponent {
  @override
  String get tag => 'amp-minute-media-player';

  AmpMinuteMediaPlayer({
    String? contentid,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super({
         'data-contentid': ?contentid,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       });

  @override
  Iterable<Component> build() => [];
}

/// Embeds media streams from the nexxOMNIA video platform.
class AmpNexxtvPlayer extends DomComponent {
  @override
  String get tag => 'amp-nexxtv-player';

  AmpNexxtvPlayer({
    String? id,
    String? domain,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super({
         'data-id': ?id,
         'data-domain': ?domain,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       });

  @override
  Iterable<Component> build() => [];
}

/// Embeds Reddit-like VK posts or poll widgets.
class AmpVk extends DomComponent {
  @override
  String get tag => 'amp-vk';

  AmpVk({String? embedId, Map<String, String>? attributes})
    : super({'data-embed-id': ?embedId, ...?attributes});

  @override
  Iterable<Component> build() => [];
}

/// Embeds videos from 3Q SDN.
class Amp3qPlayer extends DomComponent {
  @override
  String get tag => 'amp-3q-player';

  Amp3qPlayer({
    String? playoutId,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super({
         'data-playout-id': ?playoutId,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       });

  @override
  Iterable<Component> build() => [];
}

/// Embeds video players from POWR.
class AmpPowrPlayer extends DomComponent {
  @override
  String get tag => 'amp-powr-player';

  AmpPowrPlayer({
    String? account,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super({
         'data-account': ?account,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       });

  @override
  Iterable<Component> build() => [];
}

/// Embeds a secure TikTok video player.
class AmpTiktok extends DomComponent {
  @override
  String get tag => 'amp-tiktok';

  AmpTiktok({
    String? src,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super({
         'data-src': ?src,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       });

  @override
  Iterable<Component> build() => [];
}

/// Embeds Reddit posts or comments.
class AmpReddit extends DomComponent {
  @override
  String get tag => 'amp-reddit';

  AmpReddit({
    String? src,
    String? embedtype,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super({
         'data-src': ?src,
         'data-embedtype': ?embedtype,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       });

  @override
  Iterable<Component> build() => [];
}

/// Embeds a secure Imgur image or gallery.
class AmpImgur extends DomComponent {
  @override
  String get tag => 'amp-imgur';

  AmpImgur({
    String? imgurid,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super({
         'data-imgurid': ?imgurid,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       });

  @override
  Iterable<Component> build() => [];
}

/// An AMP social sharing button component.
class AmpSocialShare extends DomComponent {
  @override
  String get tag => 'amp-social-share';

  AmpSocialShare({
    String? type,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({
         'type': ?type,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       }, children);
}

/// An AMP component to integrate AddThis social tools.
class AmpAddthis extends DomComponent {
  @override
  String get tag => 'amp-addthis';

  AmpAddthis({
    String? pubid,
    String? widgetid,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super({
         'data-pubid': ?pubid,
         'data-widgetid': ?widgetid,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       });

  @override
  Iterable<Component> build() => [];
}

/// Embeds a Google Document, Sheet, Slide, or Form securely.
class AmpGoogleDocumentEmbed extends DomComponent {
  @override
  String get tag => 'amp-google-document-embed';

  AmpGoogleDocumentEmbed({
    String? src,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super({
         'src': ?src,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       });

  @override
  Iterable<Component> build() => [];
}

/// Embeds a WordPress post dynamically.
class AmpWordpressEmbed extends DomComponent {
  @override
  String get tag => 'amp-wordpress-embed';

  AmpWordpressEmbed({
    String? url,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super({
         'data-url': ?url,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       });

  @override
  Iterable<Component> build() => [];
}

/// Embeds interactive polls or widgets from BeOpinion.
class AmpBeopinion extends DomComponent {
  @override
  String get tag => 'amp-beopinion';

  AmpBeopinion({
    String? myId,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super({
         'data-my-id': ?myId,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       });

  @override
  Iterable<Component> build() => [];
}

/// Embeds cloud-hosted Slike Video Players.
class AmpSlikeplayer extends DomComponent {
  @override
  String get tag => 'amp-slikeplayer';

  AmpSlikeplayer({
    String? videoid,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super({
         'data-videoid': ?videoid,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       });

  @override
  Iterable<Component> build() => [];
}

/// Embeds a RedBull TV video stream player.
class AmpRedbullPlayer extends DomComponent {
  @override
  String get tag => 'amp-redbull-player';

  AmpRedbullPlayer({
    String? videoid,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super({
         'data-videoid': ?videoid,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       });

  @override
  Iterable<Component> build() => [];
}

/// Displays video ads utilizing the Google Interactive Media Ads (IMA) SDK.
class AmpImaVideo extends DomComponent {
  @override
  String get tag => 'amp-ima-video';

  AmpImaVideo({
    String? src,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super({
         'data-src': ?src,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       });

  @override
  Iterable<Component> build() => [];
}

/// Embeds video clips from İzlesene.com.
class AmpIzlesene extends DomComponent {
  @override
  String get tag => 'amp-izlesene';

  AmpIzlesene({
    String? videoid,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super({
         'data-videoid': ?videoid,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       });

  @override
  Iterable<Component> build() => [];
}

/// Embeds an interactive Megaphone podcast player.
class AmpMegaphone extends DomComponent {
  @override
  String get tag => 'amp-megaphone';

  AmpMegaphone({String? episode, Map<String, String>? attributes})
    : super({'data-episode': ?episode, ...?attributes});

  @override
  Iterable<Component> build() => [];
}

/// Embeds video players from MowPlayer.
class AmpMrowplayer extends DomComponent {
  @override
  String get tag => 'amp-mrowplayer';

  AmpMrowplayer({
    String? mediaid,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super({
         'data-mediaid': ?mediaid,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       });

  @override
  Iterable<Component> build() => [];
}

/// Embeds O2 video player content.
class AmpO2Player extends DomComponent {
  @override
  String get tag => 'amp-o2-player';

  AmpO2Player({
    String? pid,
    String? vid,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super({
         'data-pid': ?pid,
         'data-vid': ?vid,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       });

  @override
  Iterable<Component> build() => [];
}

/// Embeds Ooyala video player streams.
class AmpOoyalaPlayer extends DomComponent {
  @override
  String get tag => 'amp-ooyala-player';

  AmpOoyalaPlayer({
    String? embedCode,
    String? pcode,
    String? playerid,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super({
         'data-embedcode': ?embedCode,
         'data-pcode': ?pcode,
         'data-playerid': ?playerid,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       });

  @override
  Iterable<Component> build() => [];
}

/// Embeds Springboard video streams.
class AmpSpringboardPlayer extends DomComponent {
  @override
  String get tag => 'amp-springboard-player';

  AmpSpringboardPlayer({
    String? contentid,
    String? playerid,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super({
         'data-contentid': ?contentid,
         'data-playerid': ?playerid,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       });

  @override
  Iterable<Component> build() => [];
}

/// Embeds animated Vine video loops.
class AmpVine extends DomComponent {
  @override
  String get tag => 'amp-vine';

  AmpVine({
    String? vineid,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super({
         'data-vineid': ?vineid,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       });

  @override
  Iterable<Component> build() => [];
}

/// Embeds Viqeo video stream players.
class AmpViqeoPlayer extends DomComponent {
  @override
  String get tag => 'amp-viqeo-player';

  AmpViqeoPlayer({
    String? videoid,
    String? profileid,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super({
         'data-videoid': ?videoid,
         'data-profileid': ?profileid,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       });

  @override
  Iterable<Component> build() => [];
}

/// Embeds customized Wistia video player clips.
class AmpWistiaPlayer extends DomComponent {
  @override
  String get tag => 'amp-wistia-player';

  AmpWistiaPlayer({
    String? videoid,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super({
         'data-videoid': ?videoid,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       });

  @override
  Iterable<Component> build() => [];
}

/// Embeds interactive reviews widgets from Yotpo.
class AmpYotpo extends DomComponent {
  @override
  String get tag => 'amp-yotpo';

  AmpYotpo({
    String? widgetType,
    String? appKey,
    String? productId,
    Map<String, String>? attributes,
  }) : super({
         'data-widget-type': ?widgetType,
         'data-app-key': ?appKey,
         'data-product-id': ?productId,
         ...?attributes,
       });

  @override
  Iterable<Component> build() => [];
}
