let nvimplugins = '${HOME}/.zmesh/nvim/plugins'
for fpath in split(globpath(nvimplugins, '*.nvimplug'), '\n')
  exe 'source' fpath
endfor
