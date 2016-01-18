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
		<h1 class="title masthead"><a href="/articles/">Essocony</a></h1>
		{% block body %}
		{% end %}
	</body>
</html>
