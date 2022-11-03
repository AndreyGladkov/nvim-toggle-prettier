local M = {
    currentState = 1
}

vim.cmd([[
    let g:prettier#autoformat_require_pragma = 0
]])


function M.toggle()
    if M.currentState == 1 then
        M.currentState = 0
    else
        M.currentState = 1
    end

    print(M.currentState)

    vim.cmd('let g:prettier#autoformat_config_present =' .. M.currentState)

    end
return M
