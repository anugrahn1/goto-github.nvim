# goto-github.nvim

## Description

Quickly open lazy.nvim plugin links using the name.

## Usage

Hover over a line with the lazy.nvim plugin name. Eg: `'anugrahn1/goto-github.nvim'` and enter `:OpenGithubLink<CR>` to open the Github repo in your browser.

## Installation

```lua
{
    'anugrahn1/goto-github.nvim',
    event = 'VeryLazy',
    opts = {},
    keys = {
        { '<leader>go', '<CMD>OpenGithubLink<CR>', desc = 'GoToGithub' },
    },
},
```

## ToDo

- Test on Windows and MacOS
- Add option to enable a popup confirming whether or not a new file should be created if it doesn't already exist
