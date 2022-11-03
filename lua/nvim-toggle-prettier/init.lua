local M = {
    current_state = 1
}

vim.cmd([[
    let g:prettier#autoformat_require_pragma = 0
]])

function M.set_current_state()
    vim.cmd('let g:prettier#autoformat_config_present =' .. M.current_state)
end

function M.enable()
    M.current_state = 1
    M.set_current_state()
end

function M.disable()
    M.current_state = 0
    M.set_current_state()
end

function M.toggle()
    if M.current_state == 1 then
        M.disable()
    else
        M.enable()
    end
end
return M
