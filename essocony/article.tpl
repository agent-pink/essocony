{% extends "base.tpl" %}
{% autoescape None %}
{% block title %}
<title>Essocony&mdash;{{ article.meta["title"] }}</title>
{% end %}
{% block body %}
<div class="article">
	<h1 class="title"><a href="/article/{{ article.meta["slug"] }}">{{ article.meta["title"] }}</a></h1>
	<h2 class="meta title">{{ article.meta["author"] }}&mdash;{{ article.posted }}</h2>
	<div class="contents">
		{{ article.contents }}
	</div>
</div>
{% end %}
