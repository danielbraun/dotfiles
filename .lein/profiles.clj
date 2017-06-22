{:user {:plugins [[cider/cider-nrepl "RELEASE"]
                  [lein-cljfmt "RELEASE"]
                  [lein-hiera  "RELEASE"]
                  [lein-heroku "RELEASE"]
                  [quickie "RELEASE"]
                  [lein-try "RELEASE"]
                  [lein-ring "RELEASE"]
                  [lein-plz "RELEASE"]
                  [lein-cloverage "RELEASE"]]
        :dependencies [ [cljfmt "RELEASE"]
                       [jonase/eastwood "RELEASE"]
                       [com.cemerick/piggieback  "0.2.1"]
                       [slamhound "RELEASE"]
                       [org.clojure/tools.nrepl  "RELEASE"]]
        :repl-options  {:nrepl-middleware  [cemerick.piggieback/wrap-cljs-repl]}}}


