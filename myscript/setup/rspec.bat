@echo off

:: Manual preconditions
::Add to Gemfile
::group :development, :test do
  ::gem 'rspec-rails', '~> 7.0.0'
::end

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
;;set "[[=>"#" 2>&1&set/p "&set "]]==<# & del /q # >nul 2>&1" &::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

setlocal

where ruby %[[%where-loc%]]%
set ruby-root=%where-loc:~0,-8%
echo ruby-root: %ruby-root%
echo 1. bundle install
call %ruby-root%bundle install
echo 2. rspec:install
call %ruby-root%rails generate rspec:install

endlocal
