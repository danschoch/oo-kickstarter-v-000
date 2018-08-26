class Project
  attr_accessor :title, :backers

  @@all_projects =[]

  def initialize(title)
    @title = title
    @backers = []
  end

  def self.create(title)
    new_project = self.new(title)
    @@all_projects << new_project
  end

  def add_backer(backer)
    @backers << backer
  end

  def find_or_create_by_title(title)
    self.find(title) ? self.find(title) : self.create(title)

  end
end
