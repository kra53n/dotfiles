local opt = vim.o
local create_cmd = vim.api.nvim_create_user_command

function change_colorcolumn()
    local colorcolumn = tonumber(vim.o.colorcolumn)
    local cols = { 0, 79, 121 }
    table.sort(cols)

    if colorcolumn == nil or colorcolumn >= cols[#cols] then
        opt.colorcolumn = tostring(cols[1])
        return
    end
    for _, col in ipairs(cols) do
        if colorcolumn < col then
            opt.colorcolumn = tostring(col)
            break
        end
    end
end

function execute_cmd_row_ignoring_errors(...)
    local row = {...}
    for _, elem in ipairs(row) do
        pcall(vim.fn.execute, elem)
    end
end

function exit() execute_cmd_row_ignoring_errors('wq', 'q', 'q!') end
function save() execute_cmd_row_ignoring_errors('w', 'w!')       end

function run_file()
    local filename = vim.fn.expand('%:t')
    local file_extension = vim.fn.expand('%:e')
    local switch = {
        ['py'] = '!python '..filename..'' ,
        ['lua'] = '!lua '..filename..'' ,
    }
    vim.cmd(switch[file_extension])
end

create_cmd('ChangeColorcolumn', change_colorcolumn, {})
create_cmd('Exit', exit, {})
create_cmd('Save', save, {})
create_cmd('RunFile', run_file, {})
