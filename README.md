# Clojure Alpine Image with PhantomJS

Creates an Alpine-based [Clojure](https://clojure.org/) environment
with [Leiningen](https://leiningen.org/) and [PhantomJS](http://phantomjs.org/).

This is an excellent image when working with ClojureScript and the need for some
tests with virtual browsers, for example
with [lein doo](https://github.com/bensu/doo) and PhantomJS.

Uses the latest official [clojure:alpine](https://hub.docker.com/_/clojure/)
image and adds PhantomJS with a patch for Alpine Linux.
