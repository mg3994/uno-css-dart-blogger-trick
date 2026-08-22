import 'package:dom/dom.dart' show DomComponent, Component;

/// An AMP state container for managing client-side state in AMP pages.
class AmpState extends DomComponent {
  @override
  String get tag => 'amp-state';

  AmpState({
    String? id,
    String? src,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({'id': ?id, 'src': ?src, ...?attributes}, children);
}

/// An AMP dynamic list component that fetches JSON content and renders it via a template.
class AmpList extends DomComponent {
  @override
  String get tag => 'amp-list';

  AmpList({
    String? src,
    String? width,
    String? height,
    String? layout,
    String? binding,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({
         'src': ?src,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         'binding': ?binding,
         ...?attributes,
       }, children);
}

/// An AMP helper representing forms in AMP HTML.
class AmpForm extends DomComponent {
  @override
  String get tag => 'form';

  AmpForm({
    String? method,
    String? actionXhr,
    String? target,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({
         'method': ?method,
         'action-xhr': ?actionXhr,
         'target': ?target,
         ...?attributes,
       }, children);
}

/// An AMP selection element for dynamic or interactive components.
class AmpSelector extends DomComponent {
  @override
  String get tag => 'amp-selector';

  AmpSelector({
    String? id,
    String? name,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({'id': ?id, 'name': ?name, ...?attributes}, children);
}

/// An AMP auto-complete input field.
class AmpAutocomplete extends DomComponent {
  @override
  String get tag => 'amp-autocomplete';

  AmpAutocomplete({
    String? filter,
    String? minCharacters,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({
         'filter': ?filter,
         'min-characters': ?minCharacters,
         ...?attributes,
       }, children);
}

/// An AMP date picker calendar component.
class AmpDatePicker extends DomComponent {
  @override
  String get tag => 'amp-date-picker';

  AmpDatePicker({
    String? mode,
    String? type,
    String? format,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({
         'mode': ?mode,
         'type': ?type,
         'format': ?format,
         ...?attributes,
       }, children);
}

/// An AMP date display component to format dates on the client side.
class AmpDateDisplay extends DomComponent {
  @override
  String get tag => 'amp-date-display';

  AmpDateDisplay({
    String? datetime,
    String? displayIn,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({
         'datetime': ?datetime,
         'display-in': ?displayIn,
         ...?attributes,
       }, children);
}

/// An AMP relative timeago display component.
class AmpTimeago extends DomComponent {
  @override
  String get tag => 'amp-timeago';

  AmpTimeago({
    String? datetime,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({
         'datetime': ?datetime,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       }, children);
}

/// An AMP live list component to implement dynamic content updates.
class AmpLiveList extends DomComponent {
  @override
  String get tag => 'amp-live-list';

  AmpLiveList({
    String? id,
    String? pollInterval,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({
         'id': ?id,
         'poll-interval': ?pollInterval,
         ...?attributes,
       }, children);
}

/// An AMP Mustache template wrapper (`<template type="amp-mustache">`).
class AmpMustache extends DomComponent {
  @override
  String get tag => 'template';

  AmpMustache({Map<String, String>? attributes, Iterable<Component>? children})
    : super({'type': 'amp-mustache', ...?attributes}, children);
}

/// An AMP next-page component to implement infinite scroll.
class AmpNextPage extends DomComponent {
  @override
  String get tag => 'amp-next-page';

  AmpNextPage({Map<String, String>? attributes, Iterable<Component>? children})
    : super(attributes, children);
}

/// An AMP component to register service workers.
class AmpInstallServiceworker extends DomComponent {
  @override
  String get tag => 'amp-install-serviceworker';

  AmpInstallServiceworker({
    String? src,
    String? dataIframeSrc,
    String? layout,
    Map<String, String>? attributes,
  }) : super({
         'src': ?src,
         'data-iframe-src': ?dataIframeSrc,
         'layout': ?layout,
         ...?attributes,
       });

  @override
  Iterable<Component> build() => [];
}

/// Integrates paywall systems from Fewcents platform.
class AmpAccessFewcents extends DomComponent {
  @override
  String get tag => 'amp-access-fewcents';

  AmpAccessFewcents({Map<String, String>? attributes}) : super(attributes);

  @override
  Iterable<Component> build() => [];
}

/// Integrates paywalls with the LaterPay platform.
class AmpAccessLaterpay extends DomComponent {
  @override
  String get tag => 'amp-access-laterpay';

  AmpAccessLaterpay({Map<String, String>? attributes}) : super(attributes);

  @override
  Iterable<Component> build() => [];
}

/// Integrates paywalls from Poool.
class AmpAccessPoool extends DomComponent {
  @override
  String get tag => 'amp-access-poool';

  AmpAccessPoool({Map<String, String>? attributes}) : super(attributes);

  @override
  Iterable<Component> build() => [];
}

/// Integrates paywalls from Scroll membership.
class AmpAccessScroll extends DomComponent {
  @override
  String get tag => 'amp-access-scroll';

  AmpAccessScroll({Map<String, String>? attributes}) : super(attributes);

  @override
  Iterable<Component> build() => [];
}

/// Integrates dynamic content from the BySide service.
class AmpBysideContent extends DomComponent {
  @override
  String get tag => 'amp-byside-content';

  AmpBysideContent({Map<String, String>? attributes}) : super(attributes);

  @override
  Iterable<Component> build() => [];
}

/// Integrates a Google One Tap login widget.
class AmpOnetapGoogle extends DomComponent {
  @override
  String get tag => 'amp-onetap-google';

  AmpOnetapGoogle({String? clientid, Map<String, String>? attributes})
    : super({'data-clientid': ?clientid, ...?attributes});

  @override
  Iterable<Component> build() => [];
}

/// Renders remote or inline JSON/dynamic data.
class AmpRender extends DomComponent {
  @override
  String get tag => 'amp-render';

  AmpRender({
    String? src,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({'src': ?src, ...?attributes}, children);
}

/// Implements subscription access protocols for Subscribe with Google.
class AmpSubscriptionsGoogle extends DomComponent {
  @override
  String get tag => 'amp-subscriptions-google';

  AmpSubscriptionsGoogle({Map<String, String>? attributes}) : super(attributes);

  @override
  Iterable<Component> build() => [];
}

/// Implements generalized subscription protocols.
class AmpSubscriptions extends DomComponent {
  @override
  String get tag => 'amp-subscriptions';

  AmpSubscriptions({Map<String, String>? attributes}) : super(attributes);

  @override
  Iterable<Component> build() => [];
}

/// Appends a reCAPTCHA v3 token to AMP form submissions.
class AmpRecaptchaInput extends DomComponent {
  @override
  String get tag => 'amp-recaptcha-input';

  AmpRecaptchaInput({
    String? sitekey,
    String? action,
    Map<String, String>? attributes,
  }) : super({
         'data-sitekey': ?sitekey,
         'data-action': ?action,
         ...?attributes,
       });

  @override
  Iterable<Component> build() => [];
}

/// Dynamically rewrites target URLs on click (e.g., for affiliate linking).
class AmpLinkRewriter extends DomComponent {
  @override
  String get tag => 'amp-link-rewriter';

  AmpLinkRewriter({
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super(attributes, children);
}

/// Automates monetizing commerce links on AMP articles with Skimlinks affiliate network.
class AmpSkimlinks extends DomComponent {
  @override
  String get tag => 'amp-skimlinks';

  AmpSkimlinks({String? publisherCode, Map<String, String>? attributes})
    : super({'publisher-code': ?publisherCode, ...?attributes});

  @override
  Iterable<Component> build() => [];
}

/// Handles affiliate routing and link conversions using Smartlinks.
class AmpSmartlinks extends DomComponent {
  @override
  String get tag => 'amp-smartlinks';

  AmpSmartlinks({String? linkid, Map<String, String>? attributes})
    : super({'link-id': ?linkid, ...?attributes});

  @override
  Iterable<Component> build() => [];
}

/// An AMP push notifications module.
class AmpWebPush extends DomComponent {
  @override
  String get tag => 'amp-web-push';

  AmpWebPush({
    String? id,
    String? helperIframeUrl,
    String? permissionDialogUrl,
    String? serviceWorkerUrl,
    Map<String, String>? attributes,
  }) : super({
         'id': ?id,
         'helper-iframe-url': ?helperIframeUrl,
         'permission-dialog-url': ?permissionDialogUrl,
         'service-worker-url': ?serviceWorkerUrl,
         ...?attributes,
       });

  @override
  Iterable<Component> build() => [];
}

/// An AMP component for displaying user notifications.
class AmpUserNotification extends DomComponent {
  @override
  String get tag => 'amp-user-notification';

  AmpUserNotification({
    String? id,
    String? layout,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({'id': ?id, 'layout': ?layout, ...?attributes}, children);
}

/// An AMP component to manage cookie and storage consent.
class AmpConsent extends DomComponent {
  @override
  String get tag => 'amp-consent';

  AmpConsent({
    String? id,
    String? layout,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({'id': ?id, 'layout': ?layout, ...?attributes}, children);
}

/// An AMP geo-location utility component.
class AmpGeo extends DomComponent {
  @override
  String get tag => 'amp-geo';

  AmpGeo({
    String? id,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({'id': ?id, ...?attributes}, children);
}

/// An AMP component to support MRAID ads.
class AmpMraid extends DomComponent {
  @override
  String get tag => 'amp-mraid';

  AmpMraid({Map<String, String>? attributes}) : super(attributes);

  @override
  Iterable<Component> build() => [];
}

/// An AMP component to embed advertisements.
class AmpAd extends DomComponent {
  @override
  String get tag => 'amp-ad';

  AmpAd({
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

/// Shows personalized content recommendation blocks.
class AmpRecommender extends DomComponent {
  @override
  String get tag => 'amp-recommender';

  AmpRecommender({
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super(attributes, children);
}

/// Handles content subscription paywalls and user access.
class AmpAccess extends DomComponent {
  @override
  String get tag => 'amp-access';

  AmpAccess({
    String? id,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({'id': ?id, ...?attributes}, children);
}

/// Dynamically and automatically inserts advertisements into an AMP page.
class AmpAutoAds extends DomComponent {
  @override
  String get tag => 'amp-auto-ads';

  AmpAutoAds({String? type, String? adJson, Map<String, String>? attributes})
    : super({'type': ?type, 'data-ad-json': ?adJson, ...?attributes});

  @override
  Iterable<Component> build() => [];
}

/// Dynamically replaces phone numbers in links to enable call tracking.
class AmpCallTracking extends DomComponent {
  @override
  String get tag => 'amp-call-tracking';

  AmpCallTracking({
    String? config,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({'config': ?config, ...?attributes}, children);
}

/// Used to conduct user experience (A/B testing) experiments on AMP pages.
class AmpExperiment extends DomComponent {
  @override
  String get tag => 'amp-experiment';

  AmpExperiment({
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super(attributes, children);
}

/// Provides input masking capabilities inside form fields.
class AmpInputmask extends DomComponent {
  @override
  String get tag => 'amp-inputmask';

  AmpInputmask({
    String? mask,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({'mask': ?mask, ...?attributes}, children);
}

/// Provides customizable behavior for ad exits in AMPHTML ads.
class AmpAdExit extends DomComponent {
  @override
  String get tag => 'amp-ad-exit';

  AmpAdExit({Map<String, String>? attributes, Iterable<Component>? children})
    : super(attributes, children);
}

/// Automatically generates analytics configs for Web Stories.
class AmpStoryAutoAnalytics extends DomComponent {
  @override
  String get tag => 'amp-story-auto-analytics';

  AmpStoryAutoAnalytics({Map<String, String>? attributes}) : super(attributes);

  @override
  Iterable<Component> build() => [];
}

/// Interactive subscription widget for Web Push notifications.
class AmpWebPushWidget extends DomComponent {
  @override
  String get tag => 'amp-web-push-widget';

  AmpWebPushWidget({
    String? id,
    String? layout,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({'id': ?id, 'layout': ?layout, ...?attributes}, children);
}

/// Displays a MathML formula.
class AmpMathml extends DomComponent {
  @override
  String get tag => 'amp-mathml';

  AmpMathml({
    String? formula,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super({
         'data-formula': ?formula,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       });

  @override
  Iterable<Component> build() => [];
}

/// Displays a countdown sequence to a specified date.
class AmpDateCountdown extends DomComponent {
  @override
  String get tag => 'amp-date-countdown';

  AmpDateCountdown({
    String? enddate,
    String? timeleftMs,
    String? offsetSeconds,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({
         'enddate': ?enddate,
         'timeleft-ms': ?timeleftMs,
         'offset-seconds': ?offsetSeconds,
         ...?attributes,
       }, children);
}

/// Adds several dynamic CSS class names onto the `<body>` element.
class AmpDynamicCssClasses extends DomComponent {
  @override
  String get tag => 'amp-dynamic-css-classes';

  AmpDynamicCssClasses({Map<String, String>? attributes}) : super(attributes);

  @override
  Iterable<Component> build() => [];
}

/// Triggers and monitors the loading of custom fonts.
class AmpFont extends DomComponent {
  @override
  String get tag => 'amp-font';

  AmpFont({
    String? fontFamily,
    String? timeout,
    String? onInsertClass,
    String? onRemoveClass,
    Map<String, String>? attributes,
  }) : super({
         'font-family': ?fontFamily,
         'timeout': ?timeout,
         'on-insert-class': ?onInsertClass,
         'on-remove-class': ?onRemoveClass,
         ...?attributes,
       });

  @override
  Iterable<Component> build() => [];
}

/// Truncates text with an ellipsis, optionally showing an overflow/expand element.
class AmpTruncateText extends DomComponent {
  @override
  String get tag => 'amp-truncate-text';

  AmpTruncateText({
    String? layout,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({'layout': ?layout, ...?attributes}, children);
}

/// Renders 3D glTF models directly in the web browser.
class Amp3dGltf extends DomComponent {
  @override
  String get tag => 'amp-3d-gltf';

  Amp3dGltf({
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

/// Displays Adobe After Effects (Lottie) JSON animations.
class AmpBodymovinAnimation extends DomComponent {
  @override
  String get tag => 'amp-bodymovin-animation';

  AmpBodymovinAnimation({
    String? loop,
    String? autoplay,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
    Iterable<Component>? children,
  }) : super({
         'loop': ?loop,
         'autoplay': ?autoplay,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       }, children);
}

/// Integrates interactive quizzes and polls from Riddle.com.
class AmpRiddleQuiz extends DomComponent {
  @override
  String get tag => 'amp-riddle-quiz';

  AmpRiddleQuiz({
    String? riddleId,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super({
         'data-riddle-id': ?riddleId,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       });

  @override
  Iterable<Component> build() => [];
}

/// Integrates interactive Apester media cards.
class AmpApesterMedia extends DomComponent {
  @override
  String get tag => 'amp-apester-media';

  AmpApesterMedia({
    String? mediaId,
    String? width,
    String? height,
    String? layout,
    Map<String, String>? attributes,
  }) : super({
         'data-media-id': ?mediaId,
         'width': ?width,
         'height': ?height,
         'layout': ?layout,
         ...?attributes,
       });

  @override
  Iterable<Component> build() => [];
}
