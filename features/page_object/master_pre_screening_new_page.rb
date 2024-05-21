class MasterPreScreeningNew < SitePrism::Page

  element :field_category, :xpath,"//select[@name='categoryId_formWidget']"
  #element :choice_category, :xpath,"//option[contains(text(), '#{category}')]"
  element :field_type, :xpath, "//select[@name='type_formWidget']"
  #element :choice_type, :xpath,"//option[contains(text(), '#{type}')]"
  element :field_question, :xpath, "//textarea[@name='question_formWidget']"
  element :btn_save, :xpath, "//span[@class='btn-caption' and contains(text(), 'Save')]"

  def input_category
    field_category.click
  end

  def input_type
    field_type.click
  end

  def input_question
    field_question.click
  end

  def click_btn_save
    btn_save.click
  end

end
