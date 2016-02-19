{% autoescape None %}
<!doctype html>
<html>
	<head>
		<link href='https://fonts.googleapis.com/css?family=Roboto:400,400italic,700,700italic|Roboto+Mono' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="/static/style.css">
		{% block title %}
		<title>Essocony</title>
		{% end %}
	</head>
	<body>
		<h1 class="title masthead"><a href="/articles/">Essocony</a></h1>
		{% block body %}
		{% end %}
	</body>
</html>
