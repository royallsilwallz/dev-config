local tree = {}

tree.toggle = function()
  require'nvim-tree'.toggle()
  if require'nvim-tree.view'.win_open() then
    -- require'bufferline.state'.set_offset(vim.g.nvim_tree_width + 1, 'File Tree')
    require'bufferline.state'.set_offset(31, '')
  else
    require'bufferline.state'.set_offset(0)
  end
end

return tree

