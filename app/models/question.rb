class Question < ActiveRecord::Base

  def as_json(options)
    {
      id: self.id,
      question_text: self.question_text,
      choices: MultiJson.load(self.choices)
    }
  end

end
