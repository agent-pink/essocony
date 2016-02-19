from __future__ import print_function
from .handlers import app
from os  import environ
from tornado.httpserver import HTTPServer
from tornado.ioloop import IOLoop

try:
    port = int(environ["PORT"])
except (KeyError, ValueError) as e:
    port = 8080

print("Listening on:", port)
server = HTTPServer(app)
server.bind(port)
server.start(0)
IOLoop.instance().start()
