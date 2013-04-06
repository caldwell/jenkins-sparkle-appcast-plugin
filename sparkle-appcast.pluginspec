Jenkins::Plugin::Specification.new do |plugin|
  plugin.name = "sparkle-appcast"
  plugin.display_name = "Sparkle Appcast (RSS) Plugin"
  plugin.version = '0.9.0'
  plugin.description = 'Publishes an Appcast (RSS) Feed for use with the Sparkle auto-update library'

  # You should create a wiki-page for your plugin when you publish it, see
  # https://wiki.jenkins-ci.org/display/JENKINS/Hosting+Plugins#HostingPlugins-AddingaWikipage
  # This line makes sure it's listed in your POM.
  plugin.url = 'https://wiki.jenkins-ci.org/display/JENKINS/Sparkle+Appcast+Plugin'

  # The first argument is your user name for jenkins-ci.org.
  plugin.developed_by "david", "David Caldwell <david@porkrind.org>"

  # This specifies where your code is hosted.
  # Alternatives include:
  #  :git => 'git://repo.or.cz/sparkle-appcast-plugin.git'
  #  :svn => 'https://svn.jenkins-ci.org/trunk/hudson/plugins/sparkle-appcast-plugin'
  plugin.uses_repository :github => 'caldwell/jenkins-sparkle-appcast-plugin'

  # This is a required dependency for every ruby plugin.
  plugin.depends_on 'ruby-runtime', '0.10'

  plugin.depends_on 'pegdown-formatter', '1.3'
end
