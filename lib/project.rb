class Project
  attr_accessor :title, :backers

  @@all_projects =[]

  def initialize(title)
    @title = title
    @backers = []
  end

  def self.all
    @@all_projects
  end

  def self.create(title)
    new_project = self.new(title)
    @@all_projects << new_project
  end

  def self.find(title)
    self.all.find {|project| project.title == title}
  end

  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self
  end

  def self.find_or_create_by_title(title)
    self.find(title) ? self.find(title) : self.create(title)
  end
end
