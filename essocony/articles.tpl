{% extends "base.tpl" %}
{% autoescape None %}
{% block title %}
<title>Agent Pink /</title>
{% end %}
{% block body %}
{% for article in articles %}
<div class="article">
	<h1 class="title"><a href="/articles/{{ article.meta["slug"] }}">{{ article.meta["title"] }}</a></h1>
	<h2 class="meta title">{{ article.meta["author"] }}&mdash;{{ article.meta["date"] }}</h2>
	<div class="contents">
		{{ article.contents }}
	</div>
</div>
{% end %}
{% end %}
