require 'rubygems'
require 'net/http'
require 'json'

desc 'Start test with XCTool'
task :test do
  system %{
    xctool run-tests \
      -jobs 4 \
      -project LeetCode.xcodeproj \
      -scheme LeetCodeTests \
      -sdk macosx
    }
end

desc 'Sync problems list'
task :sync_problems do
  uri = URI('https://leetcode.com/api/problems/algorithms/')
  response = Net::HTTP.get(uri)
  json = JSON.parse(response)
  problems = json['stat_status_pairs']

  dir = File.dirname(__FILE__)
  problems = problems.map { |p|
    title = p['stat']['question__title']
    questionId = p['stat']['question_id']
    questionSlug = p['stat']['question__title_slug']
    paidOnly = p['paid_only']
    difficulty = p['difficulty']['level']

    href = "https://leetcode.com/problems/#{questionSlug}"
    finished = File.exists?("#{dir}/Tests/#{questionId}.swift")

    "- [#{finished ? 'x' : ' '}] " <<
    "#{questionId} " <<
    "#{difficulty == 3 ? "😨" : (difficulty == 2 ? "😐" : "😎")} " <<
    "[#{title}](#{href}) " <<
    (finished ? "[.swift](./Tests/#{questionId}.swift)" : "") <<
    "#{ paidOnly ? " ㊙️" : ""}"
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
