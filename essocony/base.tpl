{% autoescape None %}
<!doctype html>
<html>
	<head>
		<link rel="stylesheet" href="/static/style.css">
		{% block title %}
		<title>Essocony</title>
		{% end %}
	</head>
	<body>
		<h1 class="title masthead"><a href="/articles/">Essocony by George Rogers</a></h1>
		<h2 class="title"><a href="/static/diversity.pdf">Book I'm working on about diversity and world cities.</a></h2>
		{% block body %}
		{% end %}
	</body>
</html>
