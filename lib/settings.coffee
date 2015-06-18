path = require 'path'
ConfigPlus = require 'atom-config-plus'

config =
  configPath:
    order: 1
    type: 'string'
    default: path.join(atom.getConfigDirPath(), 'toggle.cson')
    description: 'filePath for words definitions'
  useDefaultWordGroup:
    order: 2
    type: 'boolean'
    default: true
  defaultWordGroupExcludeScope:
    order: 3
    type: 'array'
    default: []
    items:
      type: 'string'
    description: 'Default wordGrop is not used for scope in this list'
  flashOnToggle:
    order: 11
    type: 'boolean'
    default: true
    description: "Flash toggled word"
  flashDurationMilliSeconds:
    order: 12
    type: 'integer'
    default: 300
    description: "Duration for flash"
  flashColor:
    order: 13
    type: 'string'
    default: 'error'
    enum: ['info', 'success', 'warning', 'error', 'highlight', 'selected']
    description: 'Flash color. Correspoinding to @background-color-#{flashColor}: see `styleguide:show`'

module.exports = new ConfigPlus('toggle', config)