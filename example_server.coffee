html = """
<html>
<head>
  <script src='http://code.jquery.com/jquery-1.7.2.min.js'></script>
  <script>
    window.onload = function(){
    	$('.push-me').click(function(){
    		$('.push-me').text("push-done");
    	});
    };
  </script>
</head>

<body>
  <h1>Title</h1>
  <button class='push-me'>push-me</button>
</body>
</html>
"""

http = require 'http'
http.createServer (req, res)->
  console.log "..."
  res.writeHead 200, 'Content-Type': 'text/html'
  res.end html
.listen 4444, '127.0.0.1'

