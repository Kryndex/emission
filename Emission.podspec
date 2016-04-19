Pod::Spec.new do |s|
  s.name         = "Emission"
  s.version      = "0.1.0"
  s.summary      = "React Native Components used by Eigen."
  s.homepage     = "https://github.com/artsy/emission"
  s.license      = 'MIT'
  s.author       = { "Eloy Durán" => "eloy.de.enige@gmail.com" }
  s.source       = { :git => "https://github.com/artsy/emission.git", :tag => s.version.to_s }
  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.default_subspec = 'All'

  s.subspec 'All' do |ss|
    ss.dependency 'Emission/Core'
    ss.dependency 'Emission/ARTabViewComponent'
    ss.dependency 'Emission/ARArtworksMasonryGridComponent'
  end

  s.subspec 'Core' do |ss|
    ss.source_files = 'Pod/Classes/AREmissionFontsLoader.m', 'Pod/Classes/ARComponentViewController.swift'
    ss.dependency 'React/Core', '>= 0.24.0-rc5'
    ss.dependency 'Artsy+UIFonts', '>= 1.1.0'
  end

  s.subspec 'ARTabViewComponent' do |ss|
    ss.source_files = 'Pod/Classes/ARSwitchViewManager.*', 'Pod/Classes/ARSwitchView.*'
    ss.dependency 'Emission/Core'
    # These are just to support ARSwitchView as copied from Eigen,
    # this needs to be sorted before trying to use Emission in Eigen.
    ss.dependency 'UIView+BooleanAnimations'
    ss.dependency 'FLKAutoLayout'
    ss.dependency 'ObjectiveSugar'
  end

  s.subspec 'ARArtworksMasonryGridComponent' do |ss|
    ss.source_files = 'Pod/Classes/ARArtworksMasonryGridComponent.swift'
    ss.dependency 'Emission/Core'
    ss.dependency 'ARCollectionViewMasonryLayout', '>= 2.2.0'
    ss.dependency 'SDWebImage', '>= 3.7.2'
  end
end
