family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

imm_family = family.select {|k, v| (k == :sisters) || (k == :brothers)}

imm_family = imm_family.values.flatten

p imm_family