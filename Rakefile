desc 'Start test with XCTool'
task :test do
  system "xctool test -project LeetCode.xcodeproj -scheme LeetCodeTests -sdk macosx"
end

desc 'Update percentage'
task :update_percentage do
  s = File.read("README.md")
  completed = s.scan(/\[x\]/).length
  total = s.scan(/\[[x ]\]/).length
  percentage = (completed / total.to_f * 100).round(2)
  percentage_str = "#{completed} / #{total} = #{percentage}%"

  File.open("README.md", "w") { |file|
    file.puts s.gsub(/^Progress: .*$/, "Progress: #{percentage_str}")
  }
end

task :default => [:update_percentage, :test]
