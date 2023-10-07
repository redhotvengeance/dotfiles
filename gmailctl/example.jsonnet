local actions = import "actions.libsonnet";
local config = import "config.libsonnet";

config("My Name", "my@email.here") {
  filters+: {
    // isFromSomeone: {
    //   from: "someone@email.here"
    // },
  },
  rules+: [
    // actions.important {
    //   filter: $.filters.directlyToMe
    // },
    // actions.notImportant {
    //   filter: $.filters.isFromSomeone
    // },
  ]
}
