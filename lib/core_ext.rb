# encoding: utf-8
String.class_eval do
	def to_vnlink
		text = self.downcase
		text.gsub!(/[àáạảãâầấậẩẫăằắặẳẵÀÁẠẢÃÂẦẤẬẨẪĂẰẮẶẲẴ]/, 'a')
		text.gsub!(/[ìíịỉĩÌÍỊỈĨ]/, 'i')
		text.gsub!(/[ùúụủũưừứựửữÙÚỤỦŨƯỪỨỰỬỮ]/, 'u')
		text.gsub!(/[èéẹẻẽêềếệểễÈÉẸẺẼÊỀẾỆỂỄ]/, 'e')
		text.gsub!(/[òóọỏõôồốộổỗơờớợởỡÒÓỌỎÕÔỒỐỘỔỖƠỜỚỢỞỠ]/, 'o')
		text.gsub!(/[ỳýỵỷỹỲÝỴỶỸ]/, 'y')
		text.gsub!(/[đĐ]/, 'd')
		text.gsub!(/[^[:alnum:]]/, '-')	 # Replace non alphanumeric characters with hyphen
		text.gsub!(/-{2,}/, '-')         # Replace 2 - with one
		text.gsub!(/-+$/, '')            # Remove - at the end
		text
	end
end

