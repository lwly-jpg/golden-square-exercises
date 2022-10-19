require 'task_tracker'

describe "task_tracker method" do
  it "returns this is a task when passed string starting with #TODO" do
    result = task_tracker("#TODO Clean flat")
    expect(result).to eq "This is a task"
  end

  it "returns this is not a task when passed a string without #TODO" do
    result = task_tracker("Clean flat")
    expect(result).to eq "This is not a task"
  end

  it "returns this is not a task when passed a string starting with TODO" do
    result = task_tracker("TODO Clean flat")
    expect(result).to eq "This is not a task"
  end

  it "returns this is a task when passed string ending with #TODO" do
    result = task_tracker("Clean flat #TODO")
    expect(result).to eq "This is a task"
  end

  it "returns this is a task when passed string with #TODO mid-string" do
    result = task_tracker("Clean #TODO flat")
    expect(result).to eq "This is a task"
  end

  context "returns this is a task when passed string with #TODO but no spaces" do
    it "underscores instead of spaces" do
      result = task_tracker("#TODO_Clean_flat")
      expect(result).to eq "This is a task"
    end

    it "no spaces" do
      result = task_tracker("#TODOCleanflat")
      expect(result).to eq "This is a task"
    end
  end
end