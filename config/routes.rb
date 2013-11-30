# Copyright 2013 Square Inc.
#
#    Licensed under the Apache License, Version 2.0 (the "License");
#    you may not use this file except in compliance with the License.
#    You may obtain a copy of the License at
#
#        http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS,
#    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#    See the License for the specific language governing permissions and
#    limitations under the License.

require 'sidekiq/web'

Squish::Api::Engine.routes.draw do

  scope module: 'squish/api' do
    post '1.0/notify'        => 'v1#notify'
    post '1.0/deploy'        => 'v1#deploy'
    post '1.0/symbolication' => 'v1#symbolication'
    post '1.0/deobfuscation' => 'v1#deobfuscation'
    post '1.0/sourcemap'     => 'v1#sourcemap'
  end

  mount Sidekiq::Web => '/sidekiq', constraint: lambda { |request| SidekiqAuthConstraint.authorized?(request) }

end