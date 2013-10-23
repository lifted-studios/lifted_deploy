#
# Copyright (c) 2013 by Lifted Studios. All Rights Reserved.
#

require 'fileutils'
require 'tmpdir'
require 'yaml'

# Collection of helper methods for specifications.
module SpecHelpers
  def create_deploy_yml(hash)
    @tempdir = Dir.mktmpdir

    File.open(File.join(@tempdir, '.deploy.yml'), 'w') do |file|
      file.write(hash.to_yaml)
    end

    @pwd = FileUtils.pwd
    FileUtils.cd(@tempdir)
  end

  def delete_deploy_yml
    FileUtils.cd(@pwd)
    FileUtils.remove_dir(@tempdir)
  end
end
