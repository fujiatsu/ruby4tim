def kan2num(kan)
  unis = 0
  tens = 0
  huns = 0
  thos = 0
  if kan.index("千") != nil
    if kan[0] == "千"
      thos = 1000
    else
      thos = kan_tr(kan[0]).to_i * 1000
    end
    kan = kan[kan.index("千") + 1, kan.length - 1]
  end
  if kan.index("百") != nil
    if kan[0] == "百"
      huns = 100
    else
      huns = kan_tr(kan[0]).to_i * 100
    end
    kan = kan[kan.index("百") + 1, kan.length - 1]
  end
  if kan.index("十") != nil
    if kan[0] == "十"
      tens = 10
    else
      tens = kan_tr(kan[0]).to_i * 10
    end
    kan = kan[kan.index("十") + 1, kan.length - 1]
  end
  if kan.length == 1
    unis = kan_tr(kan).to_i
  end
  return unis + tens + huns + thos
end

def kan_tr(kan)
  kan.tr!("一", "1")
  kan.tr!("二", "2")
  kan.tr!("三", "3")
  kan.tr!("四", "4")
  kan.tr!("五", "5")
  kan.tr!("六", "6")
  kan.tr!("七", "7")
  kan.tr!("八", "8")
  kan.tr!("九", "9")
  return kan
end

kan = "七千百二十三"
puts kan2num(kan)

kan2 = "九千九百九十九"
puts kan2num(kan2)

kan3 = "六千八十"
puts kan2num(kan3)