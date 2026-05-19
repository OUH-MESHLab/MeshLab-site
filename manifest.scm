;; Dev shell for the MESH|Lab website (Hugoplate, Hugo modules).
;; Loaded by direnv via .envrc, or directly:
;;   guix shell --manifest=manifest.scm
(specifications->manifest
 '("hugo"        ; static site generator (extended)
   "node"        ; for the Hugoplate Tailwind/PostCSS pipeline
   "go"          ; resolves Hugo modules via go mod
   "git"         ; needed by go mod for VCS fetches
   "vale"        ; prose linter
   "imagemagick" ; image conversion
   "libwebp"))   ; cwebp / cavif for image pipeline
