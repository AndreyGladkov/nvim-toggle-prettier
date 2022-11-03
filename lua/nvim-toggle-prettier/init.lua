local M = {
    currentState = 1
}

vim.cmd([[
    let g:prettier#autoformat_require_pragma = 0
]])

function M.changeCurrentState()
    print('changeCurrentState')
    vim.cmd('let g:prettier#autoformat_config_present =' .. M.currentState)
end

function M.enable()
    M.currentState = 1
    M.changeCurrentState()
end

function M.disable()
    M.currentState = 0
    M.changeCurrentState()
end

function M.toggle()
    if M.currentState == 1 then
        M.disable()
    else
        M.enable()
    end
end
return M
