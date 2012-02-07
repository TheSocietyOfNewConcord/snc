module PageneameHelper
  
  def pagename_helper(page)
    info = YAML.load_file("page_particulars.yaml")
    particulars = info[page]
    title = particulars["name"]
    snc = 'The Society of New Concord'
    if title
      totaltitle = "#{snc} - #{title}"
    else
      totaltitle = snc
    return totaltitle
  end
  
end