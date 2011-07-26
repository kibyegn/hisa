# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

namespace :erb do
  namespace :to do
    task :haml do
      files = `find . -name *.html.erb`
      files.each_line do |file|
        file.strip!
        `bundle exec html2haml #{file} | cat > #{file.gsub(/\.erb$/, ".haml")}`
      end
    end
  end
end
