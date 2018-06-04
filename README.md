# Start

This application was created running:

```
rm -rf ~/.mix/
git clone https://github.com/phoenixframework/phoenix
cd phoenix
mix deps.get

cd installer
MIX_ENV=prod mix do archive.build, archive.install

cd ~/project_root
mix phx.new app_te --no-ecto --no-html --no-webpack
```

# Commit 1

- alter `mix.exs` to
- `rm -rf deps` && `mix deps.get`

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

While this returns an error:

```
curl -i localhost:4001/status  -H 'Host:'
HTTP/1.1 400 Bad Request
connection: close
server: Cowboy
date: Mon, 04 Jun 2018 15:06:14 GMT
content-length: 0
```
