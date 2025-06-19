(import spork/rawterm :as rt)

(def esc "\x1b")
(def csi (string esc "["))

(defn start []
  `Enter raw terminal mode and activate the alternate buffer`
  (rt/begin)
  (print csi "?1049h"))

(defn exit []
  `Exit raw terminal mode and deactivate the alternate buffer before exiting`
  (print csi "?1049l")
  (rt/end)
  (os/exit 0))

(defn hello
  `Evaluates to "Hello!"`
  []
  "Hello!")

(defn main
  [& args]
  (start)
  (print (hello))
  (os/sleep 2)
  (exit))
