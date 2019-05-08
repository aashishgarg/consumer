module External
  class Base
    include HTTParty
    base_uri 'http://localhost:3000/api'

    def options
      {
          headers: { Accept: 'version=1' },
          basic_auth: { username: 'admin', password: 'password' }
      }
    end
  end
end