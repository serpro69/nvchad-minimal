-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "onenord",

  hl_override = {
  },

  -- add custom highlihgts that are not supported by the theme
  hl_add = {
    -- jinja (ansible-vim plugin)
    -- use :highlight jinja<TAB> to see all possible values 
    -- while inside a yaml playbook with ansible-vim plugin loaded (see :Lazy)
    -- jinjaAttribute = {
    --   fg = "yellow",
    -- },
    -- jinjaBlockName = {
    --   fg = "yellow",
    -- },
    -- jinjaComment = {
    --   fg = "yellow",
    -- },
    -- jinjaCommentDelim = {
    --   fg = "yellow",
    -- },
    -- jinjaFilter = {
    --   fg = "yellow",
    -- },
    -- jinjaFunction = {
    --   fg = "yellow",
    -- },
    -- jinjaNumber = {
    --   fg = "yellow",
    -- },
    -- jinjaOperator = {
    --   fg = "yellow",
    -- },
    -- jinjaPunctuation = {
    --   fg = "yellow",
    -- },
    -- jinjaRaw = {
    --   fg = "yellow",
    -- },
    -- jinjaRawDelim = {
    --   fg = "yellow",
    -- },
    -- jinjaSpecial = {
    --   fg = "yellow",
    -- },
    -- jinjaStatement = {
    --   fg = "yellow",
    -- },
    -- jinjaString = {
    --   fg = "yellow",
    -- },
    -- jinjaTagBLock = {
    --   fg = "yellow",
    -- },
    -- jinjaTagDelim = {
    --   fg = "yellow",
    -- },
    -- jinjaVarBlock = {
    --   fg = "yellow",
    -- },
    -- jinjaVarDelim = {
    --   fg = "yellow",
    -- },
    -- jinjaVariable = {
    --   fg = "yellow",
    -- },
    -- -- ansible
    -- -- use :highlight ansible<TAB> to see all possible values 
    -- -- while inside a yaml playbook with ansible-vim plugin loaded (see :Lazy)
    -- ansible_attributes = {
    --   fg = "blue",
    -- },
    -- ansible_debug_keywords = {
    --   fg = "blue",
    -- },
    -- ansible_fqcn_keywords = {
    --   fg = "blue",
    -- },
    -- ansible_loop_keywords = {
    --   fg = "blue",
    -- },
    -- ansible_normal_keywords = {
    --   fg = "blue",
    -- },
  },
}

return M
