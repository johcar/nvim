local status_ok, nvim_tree = pcall(require, 'nvim-tree')
if not status_ok then
   print("fail: ", nvim_tree)
  return
end

-- empty setup using defaults
nvim_tree.setup()


