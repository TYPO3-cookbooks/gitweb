control 'gitweb-1' do
  title 'Gitweb HTTP access'
  desc 'Check that gitweb is installed and running'

  # gitweb access
  describe command('curl http://localhost') do
    its('exit_status') { should eq 0 }
    its('stdout') { should include '<title>localhost Git</title>' }
  end

end
