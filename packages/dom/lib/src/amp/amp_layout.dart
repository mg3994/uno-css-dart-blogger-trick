import 'package:dom/dom.dart' show DomComponent, Component;

/// An AMP carousel for displaying multiple content blocks along a horizontal axis.
class AmpCarousel extends DomComponent {
  @override
  String get tag => 'amp-carousel';

  AmpCarousel({
    String? type,
    String? width,
    String? height,
    String? layout,
    bool? autoplay,
    String? delay,
    bool? loop,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({
         'type': ?type,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         if (autoplay == true) 'autoplay': 'autoplay',
         'delay': ?delay,
         if (loop == true) 'loop': 'loop',
         ...?attributes,
       }, children);
}

/// A newer AMP carousel component.
class AmpBaseCarousel extends DomComponent {
  @override
  String get tag => 'amp-base-carousel';

  AmpBaseCarousel({
    String? width,
    String? height,
    String? layout,
    bool? loop,
    bool? snap,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         if (loop == true) 'loop': 'true',
         if (snap == true) 'snap': 'true',
         ...?attributes,
       }, children);
}

/// An AMP sidebar component for sliding temporary navigation menus.
class AmpSidebar extends DomComponent {
  @override
  String get tag => 'amp-sidebar';

  AmpSidebar({
    String? id,
    String? layout,
    String? side,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({
         'id': ?id,
         'layout': ?layout,
         'side': ?side,
         ...?attributes,
       }, children);
}

/// An AMP accordion component for collapsible sections of content.
class AmpAccordion extends DomComponent {
  @override
  String get tag => 'amp-accordion';

  AmpAccordion({
    bool? animate,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({
         if (animate == true) 'animate': 'animate',
         ...?attributes,
       }, children);
}

/// An AMP lightbox component to display content in an overlay.
class AmpLightbox extends DomComponent {
  @override
  String get tag => 'amp-lightbox';

  AmpLightbox({
    String? id,
    String? layout,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({'id': ?id, 'layout': ?layout, ...?attributes}, children);
}

/// An AMP lightbox gallery component.
class AmpLightboxGallery extends DomComponent {
  @override
  String get tag => 'amp-lightbox-gallery';

  AmpLightboxGallery({
    String? id,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({'id': ?id, ...?attributes}, children);
}

/// An AMP fit-text component to automatically scale text within bounds.
class AmpFitText extends DomComponent {
  @override
  String get tag => 'amp-fit-text';

  AmpFitText({
    String? width,
    String? height,
    String? layout,
    String? minFontSize,
    String? maxFontSize,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         'min-font-size': ?minFontSize,
         'max-font-size': ?maxFontSize,
         ...?attributes,
       }, children);
}

/// An AMP image lightbox component specifically for images.
class AmpImageLightbox extends DomComponent {
  @override
  String get tag => 'amp-image-lightbox';

  AmpImageLightbox({
    String? id,
    String? layout,
    Map<String, String>? attributes,
  }) : super({'id': ?id, 'layout': ?layout, ...?attributes});

  @override
  Iterable<Component> build() => [];
}

/// An AMP ad container that sticks to the top or bottom of the viewport.
class AmpStickyAd extends DomComponent {
  @override
  String get tag => 'amp-sticky-ad';

  AmpStickyAd({
    String? layout,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({'layout': ?layout, ...?attributes}, children);
}

/// An AMP parallax wrapper that behaves like a flying carpet.
class AmpFxFlyingCarpet extends DomComponent {
  @override
  String get tag => 'amp-fx-flying-carpet';

  AmpFxFlyingCarpet({
    String? height,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({'height': ?height, ...?attributes}, children);
}

/// An AMP helper to easily apply visual effects (like parallax or fade).
class AmpFxCollection extends DomComponent {
  @override
  String get tag => 'amp-fx-collection';

  AmpFxCollection({
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super(attributes, children);
}

/// An AMP component that monitors position of elements to trigger events.
class AmpPositionObserver extends DomComponent {
  @override
  String get tag => 'amp-position-observer';

  AmpPositionObserver({String? id, Map<String, String>? attributes})
    : super({'id': ?id, ...?attributes});

  @override
  Iterable<Component> build() => [];
}

/// An AMP component to declare complex visual animations.
class AmpAnimation extends DomComponent {
  @override
  String get tag => 'amp-animation';

  AmpAnimation({
    String? id,
    String? layout,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({'id': ?id, 'layout': ?layout, ...?attributes}, children);
}

/// An interactive mega navigation menu.
class AmpMegaMenu extends DomComponent {
  @override
  String get tag => 'amp-mega-menu';

  AmpMegaMenu({Map<String, String>? attributes, Iterable<Component>? children})
    : super(attributes, children);
}

/// Allows zooming and panning of child components.
class AmpPanZoom extends DomComponent {
  @override
  String get tag => 'amp-pan-zoom';

  AmpPanZoom({Map<String, String>? attributes, Iterable<Component>? children})
    : super(attributes, children);
}

/// Creates a side-by-side visual comparison of two images.
class AmpImageSlider extends DomComponent {
  @override
  String get tag => 'amp-image-slider';

  AmpImageSlider({
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super(attributes, children);
}

/// An interactive multi-level dynamic dropdown menu.
class AmpNestedMenu extends DomComponent {
  @override
  String get tag => 'amp-nested-menu';

  AmpNestedMenu({
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super(attributes, children);
}

/// A highly-optimized horizontal scrolling stream gallery.
class AmpStreamGallery extends DomComponent {
  @override
  String get tag => 'amp-stream-gallery';

  AmpStreamGallery({
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super(attributes, children);
}

/// Integrates animations created using Google Web Designer (GWD).
class AmpGwdAnimation extends DomComponent {
  @override
  String get tag => 'amp-gwd-animation';

  AmpGwdAnimation({
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super(attributes, children);
}

/// Prompts users to download your mobile app.
class AmpAppBanner extends DomComponent {
  @override
  String get tag => 'amp-app-banner';

  AmpAppBanner({
    String? id,
    String? layout,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({'id': ?id, 'layout': ?layout, ...?attributes}, children);
}

/// Shows multiple images along a horizontal axis for tap navigation.
class AmpInlineGallery extends DomComponent {
  @override
  String get tag => 'amp-inline-gallery';

  AmpInlineGallery({
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super(attributes, children);
}

/// Monitors screen orientation changes to dispatch interactive events.
class AmpOrientationObserver extends DomComponent {
  @override
  String get tag => 'amp-orientation-observer';

  AmpOrientationObserver({String? id, Map<String, String>? attributes})
    : super({'id': ?id, ...?attributes});

  @override
  Iterable<Component> build() => [];
}
