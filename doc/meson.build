valadoc = find_program('valadoc')

custom_target(
    'valadoc',
    command: [
        valadoc,
        '--pkg=glib-2.0',
        '--pkg=gobject-2.0',
        '--pkg=gee-0.8',
        libchrono_sources,
        '--package-name=' + meson.project_name(),
        '--package-version=' + meson.project_version(),
        '--force',
        '--use-svg-images',
        '-o', join_paths(meson.current_build_dir(), 'libchrono-vala'),
    ],
    build_by_default: true,
    output: 'libchrono-vala',
    depends: libchrono_lib,
)
