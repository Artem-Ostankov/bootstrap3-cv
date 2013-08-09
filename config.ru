use Rack::Static, 
  :urls => ["/img", "/js", "/css", "/font"],
  :root => "assets"

run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'assets, max-age=86400' 
    },
    File.open('assets/index.html', File::RDONLY)
  ]
}