import json
from markdown import markdown
from glob import glob

class Article(object):
    def __init__(self, f):
        lines = []
        for line in f:
            if line == "\n":
                break
            lines.append(line)
        self.meta = json.loads("".join(lines))
        self.contents = markdown("".join(f.readlines()))

def load(pat):
    articles = []
    for name in glob(pat):
        with open(name, "r") as f:
            articles.append(Article(f))
    articles.sort(key=lambda x: x.meta["date"], reverse=True)
    return articles
def article_map(articles):
    amap = {}
    for article in articles:
        amap[article.meta["slug"]] = article
    return amap
