import 'package:dom/dom.dart' show DomComponent, Component;

/// An AMP image component replacing the standard HTML img tag.
class AmpImg extends DomComponent {
  @override
  String get tag => 'amp-img';

  AmpImg({
    String? src,
    String? alt,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({
         'src': ?src,
         'alt': ?alt,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       }, children);
}

/// Minimizes and docks videos to a corner on page scroll.
class AmpVideoDocking extends DomComponent {
  @override
  String get tag => 'amp-video-docking';

  AmpVideoDocking({Map<String, String>? attributes}) : super(attributes);

  @override
  Iterable<Component> build() => [];
}

/// Embeds video players securely within an AMP-friendly iframe wrapper.
class AmpVideoIframe extends DomComponent {
  @override
  String get tag => 'amp-video-iframe';

  AmpVideoIframe({
    String? src,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({
         'src': ?src,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       }, children);
}

/// An AMP video component replacing the standard HTML video tag.
class AmpVideo extends DomComponent {
  @override
  String get tag => 'amp-video';

  AmpVideo({
    String? src,
    String? width,
    String? height,
    String? layout,
    String? poster,
    bool? autoplay,
    bool? loop,
    bool? controls,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({
         'src': ?src,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         'poster': ?poster,
         if (autoplay == true) 'autoplay': 'autoplay',
         if (loop == true) 'loop': 'loop',
         if (controls == true) 'controls': 'controls',
         ...?attributes,
       }, children);
}

/// An AMP audio component replacing the HTML5 audio tag.
class AmpAudio extends DomComponent {
  @override
  String get tag => 'amp-audio';

  AmpAudio({
    String? src,
    bool? autoplay,
    bool? loop,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({
         'src': ?src,
         if (autoplay == true) 'autoplay': 'autoplay',
         if (loop == true) 'loop': 'loop',
         ...?attributes,
       }, children);
}

/// An AMP iframe component for embedding third-party content securely.
class AmpIframe extends DomComponent {
  @override
  String get tag => 'amp-iframe';

  AmpIframe({
    String? src,
    String? width,
    String? height,
    String? layout,
    String? sandbox,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({
         'src': ?src,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         'sandbox': ?sandbox,
         ...?attributes,
       }, children);
}

/// A self-closing AMP tracking pixel component.
class AmpPixel extends DomComponent {
  @override
  String get tag => 'amp-pixel';

  AmpPixel({String? src, Map<String, String>? attributes})
    : super({'src': ?src, ...?attributes});

  @override
  Iterable<Component> build() => [];
}

/// An AMP component to capture analytics and tracking data.
class AmpAnalytics extends DomComponent {
  @override
  String get tag => 'amp-analytics';

  AmpAnalytics({
    String? type,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({'type': ?type, ...?attributes}, children);
}

/// An AMP component for displaying animated images (e.g. GIFs).
class AmpAnim extends DomComponent {
  @override
  String get tag => 'amp-anim';

  AmpAnim({
    String? src,
    String? alt,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({
         'src': ?src,
         'alt': ?alt,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       }, children);
}
