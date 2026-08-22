import 'package:dom/dom.dart' show DomComponent, Component;

/// An AMP Web Story container.
class AmpStory extends DomComponent {
  @override
  String get tag => 'amp-story';

  AmpStory({
    String? title,
    String? publisher,
    String? publisherLogoSrc,
    String? posterPortraitSrc,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({
         'standalone': 'standalone',
         'title': ?title,
         'publisher': ?publisher,
         'publisher-logo-src': ?publisherLogoSrc,
         'poster-portrait-src': ?posterPortraitSrc,
         ...?attributes,
       }, children);
}

/// A page within an AMP Web Story.
class AmpStoryPage extends DomComponent {
  @override
  String get tag => 'amp-story-page';

  AmpStoryPage({
    required String id,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({'id': id, ...?attributes}, children);
}

/// A grid layer within an AMP Web Story page.
class AmpStoryGridLayer extends DomComponent {
  @override
  String get tag => 'amp-story-grid-layer';

  AmpStoryGridLayer({
    String? template,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({'template': ?template, ...?attributes}, children);
}

/// A bookend element within an AMP Web Story.
class AmpStoryBookend extends DomComponent {
  @override
  String get tag => 'amp-story-bookend';

  AmpStoryBookend({
    String? src,
    String? layout,
    Map<String, String>? attributes,
  }) : super({'src': ?src, 'layout': ?layout, ...?attributes});

  @override
  Iterable<Component> build() => [];
}

/// Embeds 360 degree immersive images or videos inside Web Stories.
class AmpStory360 extends DomComponent {
  @override
  String get tag => 'amp-story-360';

  AmpStory360({Map<String, String>? attributes, Iterable<Component>? children})
    : super(attributes, children);
}

/// Pans and zooms an image dynamically between Web Story pages.
class AmpStoryPanningMedia extends DomComponent {
  @override
  String get tag => 'amp-story-panning-media';

  AmpStoryPanningMedia({
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super(attributes, children);
}

/// Dynamically and automatically inserts advertisements into an AMP Web Story.
class AmpStoryAutoAds extends DomComponent {
  @override
  String get tag => 'amp-story-auto-ads';

  AmpStoryAutoAds({
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super(attributes, children);
}

/// Renders standard social sharing buttons within Web Stories.
class AmpStorySocialShare extends DomComponent {
  @override
  String get tag => 'amp-story-social-share';

  AmpStorySocialShare({
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super(attributes, children);
}

/// A player for embedding and playing AMP Web Stories on standard pages.
class AmpStoryPlayer extends DomComponent {
  @override
  String get tag => 'amp-story-player';

  AmpStoryPlayer({
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       }, children);
}

/// A shopping experience container inside AMP story pages.
class AmpStoryShopping extends DomComponent {
  @override
  String get tag => 'amp-story-shopping';

  AmpStoryShopping({
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super(attributes, children);
}

/// A CTA outlink button inside AMP story pages.
class AmpStoryPageOutlink extends DomComponent {
  @override
  String get tag => 'amp-story-page-outlink';

  AmpStoryPageOutlink({
    String? layout,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({'layout': ?layout, ...?attributes}, children);
}

/// Custom video captions renderer for Web Stories.
class AmpStoryCaptions extends DomComponent {
  @override
  String get tag => 'amp-story-captions';

  AmpStoryCaptions({Map<String, String>? attributes}) : super(attributes);

  @override
  Iterable<Component> build() => [];
}

/// An attachment layer for an individual story page that allows swiping up.
class AmpStoryPageAttachment extends DomComponent {
  @override
  String get tag => 'amp-story-page-attachment';

  AmpStoryPageAttachment({
    String? layout,
    String? href,
    String? theme,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({
         'layout': ?layout,
         'href': ?href,
         'theme': ?theme,
         ...?attributes,
       }, children);
}

/// A layer for links and buttons inside an AMP Web Story page.
class AmpStoryCtaLayer extends DomComponent {
  @override
  String get tag => 'amp-story-cta-layer';

  AmpStoryCtaLayer({
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super(attributes, children);
}

/// An interactive quiz widget inside AMP Web Story pages.
class AmpStoryInteractiveQuiz extends DomComponent {
  @override
  String get tag => 'amp-story-interactive-quiz';

  AmpStoryInteractiveQuiz({
    String? id,
    String? question,
    String? option1,
    String? option2,
    String? option3,
    String? option4,
    Map<String, String>? attributes,
  }) : super({
         'id': ?id,
         'chip-text': ?question,
         'option-1-text': ?option1,
         'option-2-text': ?option2,
         'option-3-text': ?option3,
         'option-4-text': ?option4,
         ...?attributes,
       });

  @override
  Iterable<Component> build() => [];
}

/// An interactive poll widget inside AMP Web Story pages.
class AmpStoryInteractivePoll extends DomComponent {
  @override
  String get tag => 'amp-story-interactive-poll';

  AmpStoryInteractivePoll({
    String? id,
    String? question,
    String? option1,
    String? option2,
    String? option3,
    String? option4,
    Map<String, String>? attributes,
  }) : super({
         'id': ?id,
         'chip-text': ?question,
         'option-1-text': ?option1,
         'option-2-text': ?option2,
         'option-3-text': ?option3,
         'option-4-text': ?option4,
         ...?attributes,
       });

  @override
  Iterable<Component> build() => [];
}

/// Displays interactive results matching poll/quiz selections.
class AmpStoryInteractiveResults extends DomComponent {
  @override
  String get tag => 'amp-story-interactive-results';

  AmpStoryInteractiveResults({
    String? id,
    String? prompt,
    Map<String, String>? attributes,
  }) : super({'id': ?id, 'prompt-text': ?prompt, ...?attributes});

  @override
  Iterable<Component> build() => [];
}

/// An interactive emoji slider inside AMP Web Story pages.
class AmpStoryInteractiveSlider extends DomComponent {
  @override
  String get tag => 'amp-story-interactive-slider';

  AmpStoryInteractiveSlider({
    String? id,
    String? question,
    String? emoji,
    Map<String, String>? attributes,
  }) : super({
         'id': ?id,
         'chip-text': ?question,
         'emoji': ?emoji,
         ...?attributes,
       });

  @override
  Iterable<Component> build() => [];
}

/// An audio control sticker inside AMP Web Stories allowing unmute actions.
class AmpStoryAudioSticker extends DomComponent {
  @override
  String get tag => 'amp-story-audio-sticker';

  AmpStoryAudioSticker({Map<String, String>? attributes}) : super(attributes);

  @override
  Iterable<Component> build() => [];
}

/// Configurable subscriptions experience pane inside AMP Web Story pages.
class AmpStorySubscriptions extends DomComponent {
  @override
  String get tag => 'amp-story-subscriptions';

  AmpStorySubscriptions({Map<String, String>? attributes}) : super(attributes);

  @override
  Iterable<Component> build() => [];
}
