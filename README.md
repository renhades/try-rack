# try-rack

Simplest Rack Application.

Provides an app which is an object that responds to #call method, taking the environment hash as parameter and returning [HTTP status, HTTP headers (type: Hash), Body (type: Array)].

- Proc
- Method Class
- Module with class method #call

## Usage

Step 1. Install rack

    $ gem install rack

Step 2. Run rack

    // config.ru
    $ rackup (default listen port: 9292)
    $ rackup -p 3000 (specify port to 3000)

    // rack_app
    $ ruby rack_app.rb (default listen port: 8080)

Step 3. Open browser

    http://localhost:9292/
