file '/etc/rsyslog.d/98-network.conf' do
        action :delete
end

cookbook_file '/etc/rsyslog.d/01-network.conf' do
	source '01-network.conf'
	owner 'root'
	group 'root'
	mode '0644'
	action :create
end

service "rsyslog" do
	action :restart
end

cookbook_file '/etc/logrotate.d/hosts' do
	source 'hosts'
	owner 'root'
	group 'root'
	mode '0644'
	action :create
end

