desc 'Start test with XCTool'
task :test do
  system "xctool test -project LeetCode.xcodeproj -scheme TwoSum -sdk macosx"
  system "xctool test -project LeetCode.xcodeproj -scheme AddTwoNumbers -sdk macosx"
  system "xctool test -project LeetCode.xcodeproj -scheme ZigZagConversion -sdk macosx"
  system "xctool test -project LeetCode.xcodeproj -scheme RemoveNthNodeFromEndOfList -sdk macosx"
  system "xctool test -project LeetCode.xcodeproj -scheme ValidParentheses -sdk macosx"
  system "xctool test -project LeetCode.xcodeproj -scheme ReverseInteger -sdk macosx"
end

task :default => :test
