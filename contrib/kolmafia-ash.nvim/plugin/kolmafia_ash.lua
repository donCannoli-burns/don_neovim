-- Independently written filetype registration for KoLmafia ASH scripts.
if vim.g.loaded_don_kolmafia_ash then return end
vim.g.loaded_don_kolmafia_ash = true
vim.filetype.add({ extension = { ash = 'ash' } })
