desc 'Start test with XCTool'
task :test do
  system "xctool test -project LeetCode.xcodeproj -scheme TwoSum -sdk macosx"
  system "xctool test -project LeetCode.xcodeproj -scheme AddTwoNumbers -sdk macosx"
end

task :default => :test
