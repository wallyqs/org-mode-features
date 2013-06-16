desc "Convert to html all the files in feature/* with emacs and org-ruby"
task :export_all do
  system("./utils/export_everything.sh")
end

desc "Use org-ruby to make an html file out of features.org"
task :render_feature_doc do
  require 'erb'
  require 'org-ruby'
  require 'coderay'

  content = Orgmode::Parser.new(File.open("features.org", 'r').read()).to_html

  File.open("features.html", 'w') do |f|
    f.puts ERB.new(File.open("utils/feature-doc.erb").read()).result(binding)
  end
end

task :default => 'export_all'
