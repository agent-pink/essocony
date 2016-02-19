from __future__ import print_function
from .handlers import app
from os  import environ
import sys
from tornado.httpserver import HTTPServer
from tornado.ioloop import IOLoop

try:
    port = int(environ["PORT"])
except (KeyError, ValueError) as e:
    port = 8080

server = HTTPServer(app)
server.bind(port)
server.start(0)
sys.stdout.write("Listening on: %d\n" % port)
sys.stdout.flush()
IOLoop.instance().start()
