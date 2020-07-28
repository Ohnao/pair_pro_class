access_hash = {
    "Joutarou"  => 1,
    "Avdol" => 3,
    "Kakyouin" => 2,
    "Joseph"  => 8
}
  
  ruikei_hash = {
    "Joutarou" => 12,
    "Avdol" => 12,
    "Kakyouin" => 100,
    "Joseph" => 22
  }
  
  matome_hash = {}
  
  access_hash.keys.each do |name|
    matome_hash[name] = {
      "access" => access_hash[name],
      "ruikei" => ruikei_hash[name]
    }
  end
  
  p matome_hash
  
  p matome_hash["Joutarou"]["ruikei"]

  matome_hash.keys.sort.each do |name|
    value = matome_hash[name]["access"]
    puts "#{name}が#{value}です"
  end