# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "vos"
  s.version = "0.4.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Alexey Petrushin"]
  s.date = "2013-05-13"
  s.files = ["Rakefile", "readme.md", "lib/vos", "lib/vos/box.rb", "lib/vos/drivers", "lib/vos/drivers/specification.rb", "lib/vos/drivers/ssh_vfs_storage.rb", "lib/vos/drivers/s3_vfs_storage.rb", "lib/vos/drivers/local.rb", "lib/vos/drivers/s3.rb", "lib/vos/drivers/ssh.rb", "lib/vos/helpers", "lib/vos/helpers/ubuntu.rb", "lib/vos/box", "lib/vos/box/marks.rb", "lib/vos/box/vfs.rb", "lib/vos/box/shell.rb", "lib/vos/gems.rb", "lib/old", "lib/old/ssh.rb", "lib/vos.rb", "spec/config.example.yml", "spec/drivers", "spec/drivers/ssh_spec.rb", "spec/drivers/s3_spec.rb", "spec/drivers/spec_helper.rb", "spec/drivers/local_spec.rb", "spec/drivers/local_spec", "spec/drivers/local_spec/emptygit", "spec/box_spec.rb", "spec/spec_helper.rb", "spec/box_spec", "spec/box_spec/emptygit"]
  s.homepage = "http://github.com/alexeypetrushin/vos"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.25"
  s.summary = "Virtual Operating System"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<vfs>, [">= 0"])
    else
      s.add_dependency(%q<vfs>, [">= 0"])
    end
  else
    s.add_dependency(%q<vfs>, [">= 0"])
  end
end
