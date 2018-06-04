# Installation

```
git clone git@github.com:saxxi/cowboy-elixir-empty-headers-error.git
mix deps.get
iex -S mix phx.server
```

# Error

How to reproduce: 

```
curl -i localhost:4001/status  -H 'Host:anything-really-here'
HTTP/1.1 200 OK
server: Cowboy
date: Mon, 04 Jun 2018 15:07:28 GMT
content-length: 13
cache-control: max-age=0, private, must-revalidate

{"v":"0.0.1"}
```

While this:

```
curl -i localhost:4001/status  -H 'Host:'
HTTP/1.1 400 Bad Request
connection: close
server: Cowboy
date: Mon, 04 Jun 2018 15:06:14 GMT
content-length: 0
```

Returns:

```
[error] Cowboy returned 400 because it was unable to parse the request headers.

This may happen because there are no headers, or there are too many headers
or the header name or value are too large (such as a large cookie).

You can customize those values when configuring your http/https
server. The configuration option and default values are shown below:

    protocol_options: [
      max_header_name_length: 64,
      max_header_value_length: 4096,
      max_headers: 100,
      max_request_line_length: 8096
    ]
```


