require 'rails_helper'

RSpec.describe Api::ApiV0::Courses do
  before(:all) do
    @user = create(:user)
  end

  context 'GET /courses' do
    it 'should return 200 and all unexp courses' do
      get '/api/v0/courses'

      expect(response.status).to eq(200)
    end

    it 'return a course by id' do
      course = create(:course)
      get "/api/v0/courses/#{course.id}"

      result = JSON.parse(response.body)

      expect(response.status).to eq(200)
      expect(result['title']).to eq(course.title)
    end

    it 'Search courses by type' do
      type = create(:type)

      get "/api/v0/result_type/#{@user.auth_token}?type=#{type.id}"

      expect(response.status).to eq(200)
    end
  end

  # context ''
end
