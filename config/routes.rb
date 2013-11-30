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

Rails.application.routes.draw do
  post 'api/1.0/notify' => 'api/v1#notify'
  post 'api/1.0/deploy' => 'api/v1#deploy'
  post 'api/1.0/symbolication' => 'api/v1#symbolication'
  post 'api/1.0/deobfuscation' => 'api/v1#deobfuscation'
  post 'api/1.0/sourcemap' => 'api/v1#sourcemap'
end