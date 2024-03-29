require 'rails_helper'

RSpec.describe 'routes for Users', type: :routing do
  it 'does not route /users' do
    expect(get('/users')).not_to be_routable
  end

  it 'routes GET /users/me to the users controller#show' do
    expect(get('/users/me')).to route_to('users#show')
  end

  it 'routes POST /users to the users controller#create' do
    expect(post('/users')).to route_to('users#create')
  end

  it 'routes POST /users/sign_in to the users controller#sign_in' do
    expect(post('/users/sign_in')).to route_to('users#sign_in')
  end

  it 'routes PATCH /users to the users controller#update' do
    expect(patch('/users')).to route_to('users#update')
  end

  it 'routes PUT /users to the users controller#update' do
    expect(put('/users')).to route_to('users#update')
  end

  it 'routes POST /users/sign_out to the users controller#sign_out' do
    expect(post('/users/sign_out')).to route_to('users#sign_out')
  end
end
