SSH = 'ssh -A -i ~/git/akaram4ushaba/akaram4ushaba.pem -l akaram'		

desc "Run Puppet on ENV['CLIENT']"
task :apply do
  client = ENV['CLIENT']
  sh "git push"
  sh "#{SSH} #{client} pull-updates"
end
