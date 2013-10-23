#
# Copyright (c) 2013 by Lifted Studios. All Rights Reserved.
#

module LiftedDeploy
  # Configuration information for the task.
  class Config
    def initialize
    end
    # @return Path to the Git executable.
    def git_path
      `which git`
    end
  end
end
