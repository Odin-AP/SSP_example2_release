#!/usr/bin/env ruby

# 업데이트할 버전 번호
new_version = '0.1.9'

# 업데이트할 podspec 파일 경로
podspec_files = [
  'AP_SSP.podspec',
  'AP_Sample_Admob.podspec'
]

# podspec 파일 업데이트
podspec_files.each do |podspec|
  contents = File.read(podspec)
  contents.gsub!(/spec\.version\s+=\s+['"][\d\.]+['"]/, "spec.version = '#{new_version}'")
  File.write(podspec, contents)

# git 변경사항 추가
  system("git add .")
  commit_message = "'#{new_version}'.ver 업데이트"
  system("git commit -m '#{commit_message}'")
  
  system("git tag -a #{new_version} -m '#{new_version}'.ver 업데이트")
  
# podspec trunk push 하기
#  system("pod trunk push #{podspec}")
  
end
