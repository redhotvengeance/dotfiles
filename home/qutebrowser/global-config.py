config.load_autoconfig(False)

c.colors.webpage.darkmode.enabled = True

c.content.autoplay = False
c.content.desktop_capture = 'ask'
c.content.javascript.clipboard = 'ask'
c.content.mouse_lock = 'ask'

c.url.default_page = 'about:blank'
c.url.searchengines = {
    'DEFAULT': 'https://google.com/search?q={}',
    'archw': 'https://wiki.archlinux.org/?search={}',
    'arch': 'https://archlinux.org/packages/?q={}',
    'aur': 'https://aur.archlinux.org/packages/?K={}',
    'cachy': 'https://packages.cachyos.org/?search={}',
    'nix': 'https://search.nixos.org/packages?channel=unstable&query={}'
}
c.url.start_pages = 'about:blank'

c.content.geolocation = False
config.set('content.geolocation', True, 'https://www.google.com/maps/*')

c.content.media.audio_capture = 'ask'
config.set('content.media.audio_capture', True, 'https://meet.google.com/*')

c.content.media.video_capture = 'ask'
config.set('content.media.video_capture', True, 'https://meet.google.com/*')

c.content.notifications.enabled = 'ask'
config.set('content.notifications.enabled', True, 'https://calendar.google.com/*')
config.set('content.notifications.enabled', True, 'https://mail.google.com/*')
config.set('content.notifications.enabled', True, 'https://youtube.com/*')

config.set('content.register_protocol_handler', False, 'https://calendar.google.com/*')
config.set('content.register_protocol_handler', True, 'https://mail.google.com/*')
