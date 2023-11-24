return {
    'akinsho/flutter-tools.nvim',
    lazy = false,
    dependencies = {
        'nvim-lua/plenary.nvim',
        'stevearc/dressing.nvim',
    },
    config = {
        ui = {
            border = "rounded",
            notification_style = 'native'
        },
        decorations = {
            statusline = {
                app_version = false,
                device = true,
                project_config = false,
            }
        },
        debugger = {
            enabled = false,
            run_via_dap = false,
            exception_breakpoints = {},
            --[[ register_configurations = function(paths)
                require("dap").configurations.dart = {
                }
            end, ]]
        },
        fvm = true, -- takes priority over path, uses <workspace>/.fvm/flutter_sdk if enabled
        widget_guides = {
            enabled = true,
        },
        closing_tags = {
            -- highlight = "ErrorMsg",
            prefix = "-->",
            enabled = true
        },
        dev_log = {
            enabled = true,
            notify_errors = false, -- if there is an error whilst running then notify the user
            open_cmd = "tabedit", -- command to use to open the log buffer
        },
        dev_tools = {
            autostart = false, -- autostart devtools server if not detected
            auto_open_browser = false, -- Automatically opens devtools in the browser
        },
        outline = {
            open_cmd = "30vnew", -- command to use to open the outline buffer
            auto_open = false -- if true this will open the outline automatically when it is first populated
        },
        lsp = {
            color = {
                              -- show the derived colours for dart variables
                enabled = false, -- whether or not to highlight color variables at all, only supported on flutter >= 2.10
                background = false, -- highlight the background
                background_color = nil, -- required, when background is transparent (i.e. background_color = { r = 19, g = 17, b = 24},)
                foreground = false, -- highlight the foreground
                virtual_text = true, -- show the highlight using virtual text
                virtual_text_str = "■", -- the virtual text character to highlight
            },
            settings = {
                showTodos = true,
                completeFunctionCalls = true,
                analysisExcludedFolders = {"<path-to-flutter-sdk-packages>"},
                renameFilesWithClasses = "prompt", -- "always"
                enableSnippets = true,
                updateImportsOnRename = true, -- Whether to update imports and other directives when files are renamed. Required for `FlutterRename` command.
            }
        }
    }
}
