Before do
  p "Before start block execution in the support/hooks.rb"
  # Determine the directory containing chromedriver.exe
  chromedriver_directory = File.join(File.absolute_path('c:\Ruby200', File.dirname(__FILE__)),"bin")

# Add that directory to the path
  ENV['PATH'] = "#{ENV['PATH']}#{File::PATH_SEPARATOR}#{chromedriver_directory}"
  $browser = Watir::Browser.new :chrome
  $browser.window.maximize
  p "Before end block execution in the support/hooks.rb"
end

After do
  p "After start block execution in the support/hooks.rb"
  $browser.close
  p "After end block execution in the support/hooks.rb"
end