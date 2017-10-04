def get_by_address(address)
  if /^([^@]+)@([^@]+)$/ =~ address
    adHash = { "local_part" => $1, "domain" => $2}
  else
    err = address + " is not a address."
  end
end

address1 = "a_fujii@timedia.co.jp"
address2 = "a_fujii@timedia.co.jp@"
puts get_by_address(address1)
puts get_by_address(address2)