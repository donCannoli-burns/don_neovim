local root = vim.fn.getcwd()
local plugin = root .. '/contrib/kolmafia-ash.nvim'
vim.opt.runtimepath:prepend(plugin)
vim.cmd('runtime plugin/kolmafia_ash.lua')
vim.cmd('filetype on')
vim.cmd('syntax on')
vim.cmd('edit smoke-test.ash')
vim.api.nvim_buf_set_lines(0, 0, -1, false, {
  'int main() {',
  '  // comment',
  '  print("hello");',
  '  return 0;',
  '}',
})
assert(vim.bo.filetype == 'ash', 'Expected filetype=ash, got ' .. vim.bo.filetype)
assert(vim.b.current_syntax == 'ash', 'Expected current_syntax=ash')
local group = vim.fn.synIDattr(vim.fn.synID(2, 3, 1), 'name')
assert(group == 'ashComment', 'Expected comment highlight, got ' .. group)
print('PASS: .ash detection, syntax load, comment highlighting')
