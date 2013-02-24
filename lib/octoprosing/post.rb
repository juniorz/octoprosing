require 'jekyll'
require 'jekyll/post'

class Jekyll::Post
  alias_method :original_to_liquid, :to_liquid

  def to_liquid
    original_to_liquid.deep_merge({
      'filename' => self.filename
    })
  end

  protected
    def filename
      File.join(File.basename(@base), @name)
    end
end
