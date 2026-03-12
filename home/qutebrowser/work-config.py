config.load_autoconfig(False)

import os

config.source(os.path.expanduser('~/.config/qutebrowser/config.py'))

c.statusbar.widgets = ['keypress', 'url', 'scroll', 'history', 'tabs', 'progress', 'text:[WORK]']

c.window.title_format = '{perc}{current_title}{title_sep}qutebrowser (WORK)'
