from os import environ
import json
import time
from datetime import datetime
from glob import glob

environ["TZ"] = "America/Chicago"
time.tzset()

class Article(object):
    def __init__(self, f):
        lines = []
        for line in f:
            if line == "\n":
                break
            lines.append(line)
        self.meta = json.loads("".join(lines))
        self.meta["date"] = datetime.strptime(self.meta["date"], "%Y-%m-%d %H:%M:%S")
        self.meta["date"].astimezone(tzinfo.tzname
        self.contents = "".join(f.readlines())

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
