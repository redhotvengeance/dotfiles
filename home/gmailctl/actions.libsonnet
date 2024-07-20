{
  archive: {
    actions+: {
      archive: true,
    }
  },
  delete: {
    actions+: {
      delete: true,
    }
  },
  read: {
    actions+: {
      markRead: true,
    }
  },
  star: {
    actions+: {
      star: true,
    }
  },
  notSpam: {
    actions+: {
      markSpam: false,
    }
  },
  important: {
    actions+: {
      markImportant: true,
    }
  },
  notImportant: {
    actions+: {
      markImportant: false,
    }
  },
  label(labels): {
    actions+: {
      labels: labels
    }
  },
}
