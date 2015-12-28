require 'rubygems'
require 'nokogiri'
require 'open-uri'

desc 'Start test with XCTool'
task :test do
  system %{
    xctool test \
      -project LeetCode.xcodeproj \
      -scheme LeetCodeTests \
      -sdk macosx
    }
end

desc 'Sync problems list'
task :sync_problems do
  dir = File.dirname(__FILE__)
  @doc = Nokogiri::XML(open("https://leetcode.com/problemset/algorithms/"))
  problems = @doc.xpath("//*[@id='problemList']//tbody/tr")
  problems = problems.map { |tr|
    number = tr.xpath("./td[position()=2]").text.to_i
    a = tr.xpath(".//a").first
    lock = a.parent.xpath(".//i").last
    href = a.attributes["href"].value
    title = a.text
    difficulty = tr.xpath(".//td[last()]").text
    finished = File.exists?("#{dir}/Tests/#{number}.swift")
    
    "- [#{finished ? 'x' : ' '}] " <<
    "#{number} " <<
    "#{difficulty == "Hard" ? "😨" : (difficulty == "Medium" ? "😐" : "😎")} " <<
    "[#{title}](https://leetcode.com#{href}) " <<
    (finished ? "[.swift](./Tests/#{number}.swift)" : "") <<
    "#{ lock ? " ㊙️" : ""}"
  }
  s = File.read("#{dir}/README.md")
  s = s.gsub(/^- \[.+$\n/, "__")

  File.open("#{dir}/README.md", "w") { |file|
    file.puts s.gsub(/____+/, problems.reverse.join("\n") + "\n")
  }
end

desc 'Update percentage'
task :update_percentage do
  s = File.read("README.md")
  completed = s.scan(/\[x\]/).length
  total = s.scan(/\[[x ]\]/).length
  percentage = (completed / total.to_f * 100).round(2)
  percentage_str = "https://img.shields.io/badge/Progress-" <<
    "#{completed}%20%2F%20#{total}%20=%20#{percentage}%25-ff69b4.svg"

  File.open("README.md", "w") { |file|
    file.puts s.gsub(/^\!\[Progress\].*$/, "![Progress](#{percentage_str})")
  }
end

task :default => [:sync_problems, :update_percentage, :test]
