module REST
  def healthcheck
    Rest::Healthcheck.new
  end
end
