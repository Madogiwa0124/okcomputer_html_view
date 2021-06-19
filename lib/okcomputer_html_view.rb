# frozen_string_literal: true

require_relative "okcomputer_html_view/version"

module OkcomputerHtmlView
  def self.load_path
    "#{gem_dir}/app/controllers/ok_computer/ok_computer_controller.rb"
  end

  def self.gem_dir
    Gem::Specification.find_by_name("okcomputer_html_view").gem_dir
  end
end
