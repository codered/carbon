class Task < ActiveRecord::Base
	belongs_to		:project
	belongs_to		:user


def self.updateProgress(id)
	@sum = Task.where(project_id:"#{id}").sum("progress")
	@count = Task.where(project_id:"#{id}").count

	p = Project.find(id)
	p.update_column(:progress, @sum / @count )
end

def self.updateUser(id)
	t = Task.find(id)
	t.update_column(:user_id, current_user.id )
end

def self.hello
	@msg = "hello"
end


end
