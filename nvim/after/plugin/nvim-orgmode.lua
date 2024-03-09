local org = require('orgmode')

org.setup_ts_grammar()
org.setup({
    org_agenda_files = "~/norg-notes/**/*",
    org_default_notes_file = "~/norg-notes/refile.org",
    win_split_mode = "tabnew",
    org_todo_keywords = { "TODO(t)", "PROG", "|", "DONE", "WAITING", "CANCELLED" },
    org_deadline_warning_days = 8,
    org_startup_folded = 'content',
    org_agenda_skip_scheduled_if_done = true,
    org_agenda_skip_deadline_if_done = true,
    org_tags_column = 0,
    org_use_tag_inheritance = true,
    org_tags_exclude_from_inheritance = {},
    org_hide_leading_stars = false,
    org_hide_emphasis_markers = false,
    org_ellipsis = ' ▾',
    org_log_done = 'time',

    org_capture_templates = {
        t = {
            description = 'Task',
            template = '** TODO %?\n ',
            target = '~/norg-notes/gtd.org',
            headline = 'Refile'
        },

        T = {
            description = "Task - Today",
            template = '** TODO %?\nDEADLINE: %t',
            target = '~/norg-notes/gtd.org',
            headline = 'Refile'
        },

        s = {
            description = "Someday",
            template = '** TODO %?',
            target = '~/norg-notes/gtd.org',
            headline = 'Someday'
        },

        c = {
            description = "Computer Setup",
            template = '** TODO %?',
            target = '~/norg-notes/gtd.org',
            headline = 'Computer Setup'
        },

    },
    org_blank_before_new_entry = {
        heading = false,
        plain_list_item = false,
    }})
