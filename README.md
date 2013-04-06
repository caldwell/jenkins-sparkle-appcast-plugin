Sparkle Appcast Plugin for Jenkins
==================================

This plugin generates an Appcast (RSS) suitable for use as feed for
[Sparkle] [sp]. After each successful build it will create a tree of
symlinks to the artifacts of all the versions of the project that built
successfully as well as an appcast.rss file. The output directory is
designed to be statically served over HTTP. Put the URL to the Appcast file
in your App's Info.plist `SUFeedURL`.

Once it's set up, all you have to do is push (or check-in) your code to the
repository that Jenkins is watching and the new version of your software
will be automatically pushed out to all your users.

This plugin also supports creating a changelog for each build by pulling out
part of (or all of) the text of the commit messages that go into said
build. The changelog can also be rendered as markdown so you don't have to
put HTML into your commit messages.

[sp]: http://sparkle.andymatuschak.org/

How to Build, Install, and Test
-------------------------------

This plugin uses the excellent [jenkins.rb] [jrb] which allows one to write
Jenkins plugins in Ruby (jRuby).

[jrb]: https://github.com/jenkinsci/jenkins.rb

### Prerequisites

It's set up for rbenv, so if you don't have that install it. On a Mac I
suggest using Homebrew:

    brew install rbenv
    brew install rbenv-gemset
    brew install ruby-build

On Debian or Ubuntu you do:

    apt-get install rbenv ruby-build

Anything else is up to you to figure out.

### Ruby and Gems

Install jruby:

    rbenv install jruby-1.7.0
    rbenv rehash

Install bundler:

    gem install bundler

Install the rest of the required gems:

    bundle install

### Building and Testing

To build we use jenkins.rb's `jpi` utility:

    jpi build

If all goes well it creates the `pkg/sparkle-appcast.hpi` file. You can
upload that to your Jenkins installation in the "Advanced" tab of the
"Manage Plugins" page.

It's probably easier to test with a local server:

    jpi server

That launches a server which you can connect to at [http://localhost:8080] [lh]

[lh]: http://localhost:8080

Copyright
---------

Copyright © 2013 David Caldwell <david@porkrind.org>

License
-------

This code is licensed under the MIT License. See the file LICENSE for details.
