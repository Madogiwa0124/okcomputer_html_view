# frozen_string_literal: true

require "rails_helper"
require_relative "test_chek"

RSpec.describe OkComputer::OkComputerController, type: :request do
  before { OkComputer::Registry.register "test_check", check }

  describe "GET 'index'" do
    context "successed" do
      let(:check) { TestCheck.new(result: true) }

      it "performs the basic up check as HTML" do
        get "/health_checks/all.html"
        expect(response.body).to include "OkComputer"
        expect(response.body).to include "test_check"
        expect(response.body).to include "PASSED"
        expect(response.body).to include "successed!"
      end

      it "performs the basic up check as TEXT" do
        get "/health_checks/all.text"
        expect(response.body).to include "test_check: PASSED successed!"
      end

      it "performs the basic up check as JSON" do
        get "/health_checks/all.json"
        expect(response.body).to include "test_check"
        expect(response.body).to include "successed!"
        expect(!!JSON.parse(response.body)).to eq true
      end

      it "returns a success status code if all checks pass" do
        get "/health_checks/all.html"
        expect(response.body).to include "ok"
      end
    end

    context "failured" do
      let(:check) { TestCheck.new(result: false) }

      it "returns a failure status code if any check fails" do
        get "/health_checks/all.html"
        expect(response.body).to include "internal_server_error"
      end
    end
  end

  describe "GET 'show'" do
    context "successed" do
      let(:check) { TestCheck.new(result: true) }

      it "performs the basic up check as HTML" do
        get "/health_checks/test_check.html"
        expect(response.body).to include "OkComputer"
        expect(response.body).to include "test_check"
        expect(response.body).to include "PASSED"
        expect(response.body).to include "successed!"
      end

      it "performs the basic up check as TEXT" do
        get "/health_checks/test_check.text"
        expect(response.body).to include "test_check: PASSED successed!"
      end

      it "performs the basic up check as JSON" do
        get "/health_checks/test_check.json"
        expect(response.body).to include "test_check"
        expect(response.body).to include "successed!"
        expect(!!JSON.parse(response.body)).to eq true
      end

      it "returns a success status code if check pass" do
        get "/health_checks/test_check.html"
        expect(response.body).to include "ok"
      end
    end

    context "failured" do
      let(:check) { TestCheck.new(result: false) }

      it "returns a failure status code if check fails" do
        get "/health_checks/test_check.html"
        expect(response.body).to include "internal_server_error"
      end
    end
  end
end
