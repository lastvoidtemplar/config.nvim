vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = "*.pro", -- Match Prolog files
    callback = function()
        -- Get the current file path
        local file = vim.fn.expand("<afile>")
        local consult_cmd = string.format("consult('%s').\n", file)

        -- Find an active terminal buffer
        local term_buf = nil
        for _, buf in ipairs(vim.api.nvim_list_bufs()) do
            if vim.bo[buf].buftype == "terminal" then
                term_buf = buf
                break
            end
        end

        -- If no terminal buffer is found, notify the user
        if not term_buf then
            vim.notify("No Prolog terminal buffer found", vim.log.levels.ERROR)
            return
        end

        -- Get the job ID of the terminal buffer
        local job_id = vim.b[term_buf].terminal_job_id
        if not job_id then
            vim.notify("Invalid terminal job ID", vim.log.levels.ERROR)
            return
        end

        -- Send the consult command to the terminal
        vim.fn.chansend(job_id, consult_cmd)
    end,
})
