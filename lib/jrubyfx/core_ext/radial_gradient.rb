=begin
JRubyFX - Write JavaFX and FXML in Ruby
Copyright (C) 2013 The JRubyFX Team

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
=end
require 'jrubyfx/utils/common_converters'

# JRubyFX DSL extensions for JavaFX Radial Gradients
class Java::javafx::scene::paint::RadialGradient
  class << self
    java_import Java::javafx.scene.paint.CycleMethod
    extend JRubyFX::Utils::CommonConverters
    
    converter_for :new, [:none, :none, :none, :none, :none, :none, enum_converter(CycleMethod), :none]
  end
end

# JRubyFX DSL extensions for JavaFX Linear Gradients
class Java::javafx::scene::paint::LinearGradient
  class << self
    java_import Java::javafx.scene.paint.CycleMethod
    extend JRubyFX::Utils::CommonConverters
    
    converter_for :new, [:none, :none, :none, :none, :none, enum_converter(CycleMethod), :none]
  end
end
