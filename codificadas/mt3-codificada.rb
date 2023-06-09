# Linguagem a^(n^2) 
## estados não finais 
## a^{2(i+1)}
q0 = "aa"
q1 = "aaaa"
q3 = "aaaaaa"

## estados finais
## a^{2i + 1}
q2 = "a" 

# símbolo branco
@b = "ba"

## elementos do alfabeto
## sigma = {s0, s1, ..., sn }
## b^{m*3}a
@x = "bbba"
@y = "bbbbbba"

## movimentacao do cursor
esq = "c"
dir = "cc"

# transição d(qi,sm) = (qj,sn,E)
## Máquina de Turing que aceita # Linguagem a^(n^2) 
# d(qo,x) = (q1,y,D)
# d(q1,y) = (q1,y,D)
# d(q1,B) = (q1,B,E)
@d1 = "#{q0}#{@x}#{q1}#{@x}#{dir}"



def linker
  "#{@d1}"
end

def codificacao_cadeia
  "#{@x}#{@x}#{@x}#{@x}#{@b}"
end