from tornado import web
from . import handlers


app = web.Application([
    (r"/", handlers.Articles),
    (r"/articles/", handlers.Articles),
    (r"/articles/(.+)", handlers.Article),
    (r"/static/(.+)", web.StaticFileHandler, {"path": "static"}),
    (r"/(favicon.ico)", web.StaticFileHandler, {"path": "static"}),
])
