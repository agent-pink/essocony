{% extends "base.tpl" %}
{% autoescape None %}
{% block body %}
{% for article in articles %}
<div class="article">
	<h1 class="title"><a href="/article/{{ article.meta["slug"] }}">{{ article.meta["title"] }}</a></h1>
	<h2 class="meta title">{{ article.meta["author"] }}&mdash;{{ article.posted }}</h2>
	<div class="contents">
		{{ article.contents }}
	</div>
</div>
{% end %}
{% end %}
