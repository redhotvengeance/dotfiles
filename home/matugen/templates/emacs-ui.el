(set-face-attribute 'default nil
                    :background "{{ colors.surface.default.hex }}"
                    :foreground "{{ colors.on_surface.default.hex }}")

(set-face-attribute 'cursor nil
                    :background "{{ colors.primary.default.hex }}"
                    :foreground "{{ colors.on_primary.default.hex }}")

(set-face-attribute 'region nil
                    :background "{{ colors.surface_variant.default.hex }}"
                    :foreground "{{ colors.on_surface_variant.default.hex }}")

(set-face-attribute 'vertical-border nil
                    :foreground "{{ colors.outline.default.hex }}")

(set-face-attribute 'mode-line-active nil
                    :background "{{ colors.secondary.default.hex }}"
                    :foreground "{{ colors.on_secondary.default.hex }}"
                    :box nil)

(set-face-attribute 'mode-line-inactive nil
                    :background "{{ colors.surface_variant.default.hex }}"
                    :foreground "{{ colors.outline.default.hex }}"
                    :box nil)

(set-face-attribute 'mode-line-buffer-id nil
                    :foreground 'unspecified
                    :background 'unspecified
                    :weight 'bold)

(with-eval-after-load 'eglot
  (set-face-attribute 'eglot-mode-line nil
                      :foreground 'unspecified
                      :background 'unspecified
                      :weight 'bold))

(with-eval-after-load 'vertico
  (set-face-attribute 'vertico-current nil
                      :background "{{ colors.secondary_container.default.hex }}"
                      :foreground "{{ colors.on_secondary_container.default.hex }}"
                      :weight 'bold))
