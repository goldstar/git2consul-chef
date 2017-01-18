control "git2consul" do
  title "Ensure git2consul service is configured and running"

  describe npm('git2consul') do
    it { should be_installed }
  end

  describe file('/etc/git2consul/config.json') do
    it { should exist }
    it { should be_readable.by_user('git2consul') }
  end

  describe service('git2consul') do
    it { should be_enabled }
    it { should be_running }
  end
end
