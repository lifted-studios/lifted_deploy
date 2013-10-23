#
# Copyright (c) 2013 by Lifted Studios. All Rights Reserved.
#

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'lifted_deploy'

root = File.expand_path('../..', __FILE__)
Dir[File.join(root, 'spec/support/**/*.rb')].each { |f| require f }

include SpecHelpers
