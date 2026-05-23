libchrono_sources = files(
  'Core.vala',
  'LanguageParser.vala',
  'Parser.vala',
  'ParseResult.vala',
  'RecurrenceRule.vala',
  'Common/ISOParser.vala',
  'Common/SlashParser.vala',
  'Common/TimeParser.vala',
  'Locales/en/ENCasualDateParser.vala',
  'Locales/en/ENCasualTimeParser.vala',
  'Locales/en/ENConstants.vala',
  'Locales/en/ENDateTimeComboParser.vala',
  'Locales/en/EnglishParser.vala',
  'Locales/en/ENMonthNameParser.vala',
  'Locales/en/ENRecurrenceParser.vala',
  'Locales/en/ENRelativeDateFormatParser.vala',
  'Locales/en/ENTimeExpressionParser.vala',
  'Locales/es/ESCasualDateParser.vala',
  'Locales/es/ESCasualTimeParser.vala',
  'Locales/es/ESConstants.vala',
  'Locales/es/ESDateTimeComboParser.vala',
  'Locales/es/ESMonthNameParser.vala',
  'Locales/es/ESRelativeDateFormatParser.vala',
  'Locales/es/ESTimeExpressionParser.vala',
  'Locales/es/SpanishParser.vala',
)

libchrono_deps = [glib_dep, gobject_dep, gee_dep]

libchrono_lib = shared_library(
  'chrono',
  libchrono_sources,
  dependencies: libchrono_deps,
  vala_header: 'chrono.h',
  vala_vapi: 'chrono.vapi',
  install: true,
  install_dir: [true, true, true],
)

libchrono_dep = declare_dependency(
  link_with: libchrono_lib,
  dependencies: libchrono_deps,
  include_directories: include_directories('.'),
)

pkg = import('pkgconfig')
pkg.generate(
  libchrono_lib,
  name: 'chrono',
  description: 'A natural language date and time parser library for Vala/GLib applications',
  version: meson.project_version(),
  filebase: 'chrono',
)
