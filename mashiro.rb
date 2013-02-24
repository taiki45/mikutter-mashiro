# -*- coding: utf-8 -*-

Plugin.create :mashiro do
  filter_update do |service, msgs|
    [
      service,
      msgs.map do |msg|
        msg[:message] = msg[:message].gsub /[ァ-ヴ]+/u, "ましろ"
        msg
      end
    ]
  end
end
