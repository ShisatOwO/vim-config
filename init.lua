require "catppuccin.catppuccin"

vim.cmd [[
  if exists("g:neovide")
"General Settings

    set guifont=FiraCode\ Nerd\ Font:h14
    let g:neovide_scale_factor = 1.0
    let g:neovide_scroll_animation_length = 0.3
    let g:neovide_hide_mouse_when_typing = v:true
    let g:neovide_refresh_rate = 75



"Cursor Settings

    let g:neovide_cursor_animation_length = 0.15
    let g:neovide_cursor_antialiasing = v:true
    let g:neovide_cursor_trail_size = 0.1
    


"Particle Settings

    let g:neovide_cursor_vfx_mode = "railgun"
    "let g:neovide_cursor_vfx_opacity = 200.0
    let g:neovide_cursor_vfx_particle_lifetime = 1.2
    let g:neovide_cursor_vfx_particle_phase = 1.5
    let g:neovide_cursor_vfx_particle_curl = 1.5
    let g:neovide_cursor_vfx_particle_density = 7.0

  endif
]]
