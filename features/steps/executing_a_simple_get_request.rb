class Spinach::Features::ExecutingASimpleGetRequest < Spinach::FeatureSteps
  step 'I make a GET request to "/simple_get"' do
    @response = Requests.get("/simple_get")
  end

  step 'my response should have status code 200' do
    expect(@response.code).to eq(200)
  end

  step 'my response should have an empty body' do
    expect(@response.body.to_s).to be_empty
  end
end
