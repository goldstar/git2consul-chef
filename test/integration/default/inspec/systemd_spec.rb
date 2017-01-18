control "systemd" do
  title "Ensure Systemd service is configured and running"

  only_if do
    file('/etc/systemd/system/git2consul.service').exist?
  end

  describe systemd_service('git2consul') do
    it { should be_installed }
    it { should be_enabled }
    it { should be_running }
  end
end
