class KeywordsExtractor
  def self.extract(text)
    return [] if text.blank?
    ## handle broken undefined mb_chars for Fixnum if text is an Integer
    ## convert text to string before calling mb_chars method
    text.to_s.mb_chars.normalize(:kd).to_s.gsub(/[^[:alpha:]\s\.\-_:;'",]/,'').downcase.split(/[\s\.\-_:;'",]+/)
  end
end