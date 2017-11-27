class FateOfTheGods
  def initialize(app, god = 'Zeus')
    @app = app
    @god = god
  end

  def call(env)
    status, headers, body = @app.call(env)
    body << "<br> here comes #{@god}."

    [status, headers, body]
  end
end

use FateOfTheGods, 'Hades' # Middleware no.1
use FateOfTheGods, 'Poseidon' # Middleware no.2

run Proc.new {
  [200, { 'Content-Type' => 'text/html' }, ['Hello, Rack']]
}