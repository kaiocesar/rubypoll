# =======================================
#   POLLS
# =======================================
p1 = Poll.create(
    description: 'Quantos planetas existem no sistema solar?'
)
p2 = Poll.create(
    description: 'Qual é a distância apróximada em minutos/luz do sol a terra?' 
)

# =======================================
#   OPTIONS
# =======================================
op_1_a = p1.option.create(
    description: "12"
)
op_1_b = p1.option.create(
    description: "10"
)
op_1_c = p1.option.create(
    description: "8"
)
op_1_d = p1.option.create(
    description: "22"
)

op_2_a = p2.option.create(
    description: '16min'
)
op_2_b = p2.option.create(
    description: '8min'
)
op_2_c = p2.option.create(
    description: '10min'
)
op_2_d = p2.option.create(
    description: '60min'
)

# =======================================
#   VOTES
# =======================================
op_1_c.votes +=1
op_1_c.save!

op_2_b.votes +=1
op_2_b.save!

# =======================================
#   POLL VIEWS
# =======================================
p1.views +=1
p1.save!

p2.views +=1
p2.save!