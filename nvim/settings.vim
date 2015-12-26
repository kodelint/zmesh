let nvimsettings = '${HOME}/.zmesh/nvim/settings'
for fpath in split(globpath(nvimsettings, '*.nvim'), '\n')
  exe 'source' fpath
endfor
