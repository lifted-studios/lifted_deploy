#
# Copyright (c) 2013 by Lifted Studios. All Rights Reserved.
#

describe LiftedDeploy::Config do
  describe '#git_path' do
    subject { described_class.new.git_path }

    describe 'defaults to' do
      it { should eq(`which git`) }
    end

    describe 'can be overridden by .deploy.yml' do
      before { create_deploy_yml(git: { path: '/path/to/git' }) }
      after { delete_deploy_yml }

      it { should eq('/path/to/git') }
    end
  end
end
