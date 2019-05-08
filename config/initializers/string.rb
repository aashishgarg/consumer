class String
  def data
    JSON.parse(self)
  end
end