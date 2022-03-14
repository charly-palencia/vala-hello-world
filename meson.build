# project name and programming language
project('com.github.guarapolabs.hello-world', 'vala', 'c')

# Include the translations module
i18n = import('i18n')

# Set our translation domain
add_global_arguments('-DGETTEXT_PACKAGE="@0@"'.format (meson.project_name()), language:'c')

# Create a new executable, list the files we want to compile, list the dependencies we need, and install
executable(
    meson.project_name(),
    'src' / 'Application.vala',
    dependencies: [
        dependency('gtk+-3.0')
    ],
    install: true
)

# Install our .desktop file so the Applications Menu will see it
# install_data(
#     'data' / 'hello-world.desktop',
#     install_dir: get_option('datadir') / 'applications',
#     rename: meson.project_name() + '.desktop'
# )

# Install our .metainfo.xml file so AppCenter will see it
# install_data(
#     'data' / 'hello-world.metainfo.xml',
#     install_dir: get_option('datadir') / 'metainfo',
#     rename: meson.project_name() + '.metainfo.xml'
# )

#Translate and install our .desktop file
i18n.merge_file(
    input: 'data' / 'hello-world.desktop.in',
    output: meson.project_name() + '.desktop',
    po_dir: meson.source_root() / 'po',
    type: 'desktop',
    install: true,
    install_dir: get_option('datadir') / 'applications'
)

#Translate and install our .metainfo file
i18n.merge_file(
    input: 'data' / 'hello-world.metainfo.xml.in',
    output: meson.project_name() + '.metainfo.xml',
    po_dir: meson.source_root() / 'po',
    install: true,
    install_dir: get_option('datadir') / 'metainfo'
)

subdir('po')
