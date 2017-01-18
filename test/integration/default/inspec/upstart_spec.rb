control "upstart" do
  title "Ensure Upstart service is configured and running"

  only_if do
    file('/etc/init/git2consul.conf').exist?
  end

  describe upstart_service('git2consul') do
    it { should be_installed }
    it { should be_enabled }
    it { should be_running }
  end
end
