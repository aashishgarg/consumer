module External
  class Post < Base
    # --- Attribute accessors --- #
    attr_accessor :page

    def initialize(page)
      @page = 1
    end

    def all
      self.class.get("/posts?page=#{page}", options)
    end
  end
end
