(module kreative.utils.json.read
        {autoload {json kreative.utils.json.init main kreative.main}})

;;; Handles reading json files

(defonce header (string.format "%s" json.path))

;; fnlfmt: skip
(defn file! [file]
      "Reads a json file
@file -- pathless, extensionless file name"
      (json.decode (json.<-file (string.format "%s/%s-%s.json" json.path
                                               file
                                               main.configs.background))))

(defn full-file! [full-file] "Reads from a full file path
@full-file -- full file path to a json file"
      (json.decode (json.<-file (string.format "%s%s" header full-file))))

(defn colors [dir] "Read colors table from file for much faster startup"
      (let [file (json.<-file (string.format
                                "%s/colors-%s.json" dir
                                main.configs.background))]
        (if (> (length file) 0)
          (json.decode file)
          nil)))
