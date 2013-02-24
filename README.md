# Octoprosing

Promotes [eventual consistency](http://prose.io/help/eventually-consistent.html) by integrating [Octopress](http://octopress.org/) and [Prose.io](http://prose.io)

Octoprosing provides a quick way to implement a 'Fork me' button to your posts.

## Installation

Add this line to your Octopress blog's Gemfile:

    group :development
      gem 'octoprosing'
    end

And then execute:

    $ bundle

## Configuration

Add the following configuration to your '_config.yml':

    # Octoprose settings
    octoprose:
      editor: http://prose.io
      github_repo: user/repo
      github_branch: branch # it's usually 'source' if you deploy to github pages

And then copy the default include file and the loader plugin

    $ cd your/blog/root/path
    $ curl https://raw.github.com/juniorz/octoprosing/master/includes/fork_me.html -o source/_includes/fork_me.html
    $ curl https://raw.github.com/juniorz/octoprosing/master/includes/octoprosing.rb -o plugins/octoprosing.rb

Finally, add the include wherever you want to display the 'Fork me' link.
I've added it to `source/_includes/article.html`, just after the post's date:

    {% include post/date.html %}{{ time }}
    {% include fork_me.html %}

If you want to customize the link, just edit the file `source/_includes/fork_me.html`.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
