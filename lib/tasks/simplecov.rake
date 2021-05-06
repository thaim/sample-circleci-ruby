require "simplecov"

namespace :simplecov do
  desc "merge_results"
  task merge_results: :environment do
    SimpleCov.start 'rails' do
      merge_timeout(3600)
    end

    SimpleCov.collate Dir["coverage_results/.resultset-*.json"]
  end
end
