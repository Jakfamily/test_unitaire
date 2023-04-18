require_relative '../lib/caesar_cipher'

describe "caesar_cipher" do
  it "should reverse the ASCII encrypted phrases with a 3-letter right shift" do
    expect(caesar_cipher("hello, world", 3)).to eq("khoor, zruog")
    expect(caesar_cipher("Le café noir", 3)).to eq("Oh fdié qrlu")
    expect(caesar_cipher("Qui dort peu?", 3)).to eq("Txl gruw shx?")
  end
end

describe "translate a letter to ascii"do
  it "should translate a letter respecting the ascii  convention" do
    expect(translate_ascii("A")).to eq(65)
    expect(translate_ascii("H")).to eq(72)
    expect(translate_ascii("E")).to eq(69)
  end
end