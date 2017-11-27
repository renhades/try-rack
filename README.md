# try-rack

Simplest Rack Application.

只要能呼叫 .call 並回傳 [HTTP status, HTTP headers (type: Hash), Body (type: Array)].

- Proc
- Method Class
- Module with class method #call

## Usage

Step 1. Install rack

    $ gem install rack

Step 2. Run rack

    $ rackup (default listen port 9292)
    $ rackup -p 3000 (specify port to 3000)

Step 3. Open browser

    http://localhost:9292/
