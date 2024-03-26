return {
    "nvim-orgmode/orgmode",

    config = function()
        local org = require('orgmode')

        org.setup_ts_grammar()
        org.setup({
            org_agenda_files = "~/notes/gtd.org",
            org_default_notes_file = "~/notes/gtd.org",
            win_split_mode = "tabnew",
            org_todo_keywords = { "TODO(t)", "PROG", "|", "DONE"},
            org_deadline_warning_days = 8,
            org_startup_folded = 'content',
            org_agenda_skip_scheduled_if_done = true,
            org_agenda_skip_deadline_if_done = true,
            org_tags_column = 0,
            org_use_tag_inheritance = true,
            org_tags_exclude_from_inheritance = {},
            org_hide_leading_stars = true,
            org_hide_emphasis_markers = false,
            org_ellipsis = ' ▾',
            org_log_done = 'time',

            org_capture_templates = {
                t = {
                    description = 'Task',
                    template = '** TODO %?\n ',
                    target = '~/notes/gtd.org',
                    headline = 'General'
                },

                T = {
                    description = "Task - Today",
                    template = '** TODO %?\nDEADLINE: %t',
                    target = '~/notes/gtd.org',
                    headline = 'General'
                },

                s = {
                    description = "Someday",
                    template = '** TODO %?',
                    target = '~/notes/gtd.org',
                    headline = 'Someday'
                },

                c = {
                    description = "Computer Setup",
                    template = '** TODO %?',
                    target = '~/notes/gtd.org',
                    headline = 'Computer Setup'
                },

            },
            mappings = {
                org = {
                    org_cycle = false,
                    org_return = false,
                    capture = {
                        org_capture_finalize = "<leader>oC",
                        org_capture_refile = '<leader>oR',
                    },
                },
            },
        })
    end,
}
