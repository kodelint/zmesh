 require 'fileutils'
#
 module Vimplug
   @vimplug_path = File.expand_path File.join(ENV['HOME'], '.nvim', '.vimplug.local')
  def self.add_plugin_to_vimplug(plugin_repo)
    return if contains_vimplug? plugin_repo
    vimplug = vimplug_from_file
    last_bundle_dir = vimplug.rindex{ |line| line =~ /^plugins / }
    last_bundle_dir = last_bundle_dir ? last_bundle_dir+1 : 0
    vimplug.insert last_bundle_dir, "Bundle \"#{plugin_repo}\""
    write_vimplug_to_file vimplug
  end

  def self.remove_plugin_from_vimplug(plugin_repo)
    vimplug = vimplug_from_file
    deleted_value = vimplug.reject!{ |line| line =~ /plugins "#{plugin_repo}"/ }

    write_vimplug_to_file vimplug

    !deleted_value.nil?
  end

  def self.vimplug_list
    vimplugs_from_file.select{ |line| line =~ /^plugins .*/ }.map{ |line| line.gsub(/plugins "(.*)"/, '\1')}
  end

   def self.update_vimplug
     system "nvim +PlugInstall +quitall"
     system "echo colorscheme molokai >> ${HOME}/.config/nvim/settings/appearance.nvim"
     system "echo set background=dark >> ${HOME}/.config/nvim/settings/appearance.nvim"
   end


  private
  def self.contains_vimplug?(vimplug_name)
    FileUtils.touch(@vimplugs_path) unless File.exists? @vimplugs_path
    File.read(@vimplugs_path).include?(vimplug_name)
  end

  def self.vimplug_from_file
    FileUtils.touch(@vimplug_path) unless File.exists? @vimplug_path
    File.read(@vimplug_path).split("\n")
  end

  def self.write_vimplug_to_file(vimplug)
    FileUtils.cp(@vimplug_path, "#{@vimplug_path}.bak")
    vimplug_file = File.open(@vimplug_path, "w")
    vimplug_file.write(vimplug.join("\n"))
    vimplug_file.close
  end
 end
