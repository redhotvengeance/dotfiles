local actions = import "actions.libsonnet";
local filters = import "filters.libsonnet";
local lib = import 'gmailctl.libsonnet';

function(name="", email="") {
  version: "v1alpha3",
  author: {
    name: name,
    email: email,
  },
  filters:: {
    toMe: {
      to: email
    },
    notToMe: {
      not: $.filters.toMe
    },
    directlyToMe: lib.directlyTo(email),
    notDirectlyToMe: {
      not: $.filters.directlyToMe
    },
    fromMe: {
      from: email
    },
    notFromMe: {
      not: $.filters.fromMe
    },
    ccMe: {
      cc: email
    },
    notCCMe: {
      not: $.filters.ccMe
    },
  } + filters,
  rules: [
  ]
}
