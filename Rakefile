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
  percentage_str = "https://img.shields.io/badge/Progress-#{completed}%20%2F%20#{total}%20=%20#{percentage}%25-ff69b4.svg"

  File.open("README.md", "w") { |file|
    # ![Progress](https://img.shields.io/badge/Progress-21%20%2F%20183%20%3D%2011.48%25-ff69b4.svg)
    file.puts s.gsub(/^\!\[Progress\].*$/, "![Progress](#{percentage_str})")
  }
end

task :default => [:update_percentage, :test]
