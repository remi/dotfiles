vim.filetype.add({
  pattern = {
    ['Procfile'] = 'yaml',
    ['.env'] = 'sh',
    ['.env.*'] = 'sh',
    ['%.jsonschema$'] = 'json',
    ['%.plist$'] = 'xml',
  },
})
