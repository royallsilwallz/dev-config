-- -- vim.g.completeopt='menu,menuone,noselect,noinsert'

-- local cmp = require("cmp")
-- local compare = require('cmp.config.compare')
-- local mapping = require('cmp.config.mapping')
-- local types = require('cmp.types')

-- local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
-- require'lspconfig'.tsserver.setup {
--   capabilities = capabilities
-- }

-- local WIDE_HEIGHT = 40


-- return function()
--   return {
--     enabled = function()
--       return vim.api.nvim_buf_get_option(0, 'buftype') ~= 'prompt'
--     end,
--     completion = {
--       autocomplete = {
--         types.cmp.TriggerEvent.TextChanged,
--       },
--       completeopt = 'menu,menuone,noselect',
--       keyword_pattern = [[\%(-\?\d\+\%(\.\d\+\)\?\|\h\w*\%(-\w*\)*\)]],
--       keyword_length = 1,
--       get_trigger_characters = function(trigger_characters)
--         return trigger_characters
--       end,
--     },

--     snippet = {
--       expand = function(args)
--         vim.fn["vsnip#anonymous"](args.body) 
--       end,
--     },

--     preselect = types.cmp.PreselectMode.Item,

--     documentation = {
--       border = { '', '', '', ' ', '', '', '', ' ' },
--       winhighlight = 'NormalFloat:NormalFloat,FloatBorder:NormalFloat',
--       maxwidth = math.floor((WIDE_HEIGHT * 2) * (vim.o.columns / (WIDE_HEIGHT * 2 * 16 / 9))),
--       maxheight = math.floor(WIDE_HEIGHT * (WIDE_HEIGHT / vim.o.lines)),
--     },

--     confirmation = {
--       default_behavior = types.cmp.ConfirmBehavior.Insert,
--       get_commit_characters = function(commit_characters)
--         return commit_characters
--       end,
--     },

--     sorting = {
--       priority_weight = 2,
--       comparators = {
--         function(e1, e2)
--           local diff
--           diff = compare.offset(e1, e2)
--           if diff ~= nil then
--             return diff
--           end
--           diff = compare.exact(e1, e2)
--           if diff ~= nil then
--             return diff
--           end
--           diff = compare.score(e1, e2)
--           if diff ~= nil then
--             return diff
--           end
--           diff = compare.kind(e1, e2)
--           if diff ~= nil then
--             return diff
--           end
--           diff = compare.sort_text(e1, e2)
--           if diff ~= nil then
--             return diff
--           end
--           diff = compare.length(e1, e2)
--           if diff ~= nil then
--             return diff
--           end
--           return compare.order(e1, e2)
--         end,
--       },
--     },

--     event = {},

--     mapping = {
--       ['<Down>'] = mapping(mapping.select_next_item({ behavior = types.cmp.SelectBehavior.Select }), { 'i' }),
--       ['<Up>'] = mapping(mapping.select_prev_item({ behavior = types.cmp.SelectBehavior.Select }), { 'i' }),
--       ['<C-n>'] = mapping(mapping.select_next_item({ behavior = types.cmp.SelectBehavior.Insert }), { 'i' }),
--       ['<C-p>'] = mapping(mapping.select_prev_item({ behavior = types.cmp.SelectBehavior.Insert }), { 'i' }),
--       ['<C-o>'] = cmp.mapping.complete(),
--       ['<C-y>'] = mapping(mapping.confirm({ select = false }), { 'i' }),
--       ['<C-e>'] = mapping(mapping.abort(), { 'i' }),
--     },

--     formatting = {
--       fields = { 'abbr', 'kind', 'menu' },
--       format = function(_, vim_item)
--         return vim_item
--       end,
--     },

--     experimental = {
--       native_menu = false,
--       ghost_text = true,
--     },

--     sources = {
--       { name = 'nvim_lsp' },
--       { name = 'vsnip' },
--       { name = 'buffer', keyword_length = 5 },
--     },
--   }

-- end


vim.opt.completeopt = { "menu", "menuone", "noselect" }

vim.opt.shortmess:append "c"

local cmp = require "cmp"

cmp.setup {
  mapping = {
    ["<C-d>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-e>"] = cmp.mapping.close(),
    ["<c-y>"] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Insert,
      select = true,
    },
    ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 's' }),
    -- ['<C-o>'] = cmp.mapping.complete(),
  },

  sources = {
    { name = "nvim_lsp" },
    { name = "nvim_lua" },
    -- { name = "buffer", keyword_length = 3 },
    { name = "path" },
    { name = "vsnip" },
    { name = "buffer" },
  },


  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body) 
    end,
  },

  formatting = {
    fields = { 'abbr', 'kind', 'menu' },
    format = function(_, vim_item)
      return vim_item
    end,
  },

  experimental = {
    native_menu = false,
    ghost_text = true,
  },
}

-- nvim-autopairs CR issue
require("cmp").setup({
  map_cr = true, --  map <CR> on insert mode
  map_complete = true, -- it will auto insert `(` (map_char) after select function or method item
  auto_select = true, -- automatically select the first item
  insert = false, -- use insert confirm behavior instead of replace
  map_char = { -- modifies the function or method delimiter by filetypes
    all = '(',
    tex = '{'
  }
})

