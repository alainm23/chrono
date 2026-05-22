project('libchrono', ['vala', 'c'],
  version: '1.0.0',
  license: 'GPL-3.0-or-later',
  meson_version: '>= 0.56'
)

glib_dep = dependency('glib-2.0', version: '>= 2.70')
gobject_dep = dependency('gobject-2.0')
gee_dep = dependency('gee-0.8')

subdir('lib')
subdir('data')

if get_option('docs')
  subdir('doc')
endif

if get_option('tests')
  subdir('tests')
endif
