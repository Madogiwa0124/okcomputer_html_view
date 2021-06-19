# frozen_string_literal: true

RSpec.describe OkcomputerHtmlView do
  it "has a version number" do
    expect(OkcomputerHtmlView::VERSION).not_to be nil
  end

  describe ".load_path" do
    it "return override controller path" do
      result = "okcomputer_html_view/app/controllers/ok_computer/ok_computer_controller.rb"
      expect(OkcomputerHtmlView.load_path).to include result
    end
  end

  describe ".gem_dir" do
    it "return installed path" do
      result = "okcomputer_html_view"
      expect(OkcomputerHtmlView.load_path).to include result
    end
  end
end
