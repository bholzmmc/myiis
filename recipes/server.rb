powershell_script 'Install IIS' do
  code <<-EOH
  Add-WindowsFeature Web-Server
  EOH
end
file 'c:\inetpub\wwwroot\Default.htm' do
   content '<h1> Hello, world!</h1>'
 end
 service 'w3svc' do
   action [ :enable , :start ]
 end
